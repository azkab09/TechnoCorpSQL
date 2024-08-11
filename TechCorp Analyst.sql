select * from products p ;
select * from customers c;
select * from orders o;
select * from orderdetails od;
select * from employees e;
select * from supporttickets st;

drop table customers c;

--ANALYSIST QUESTION
--1. Identifikasi 3 pelanggan teratas berdasarkan total nominal pesanan!
select c.first_name, c.last_name, sum(o.total_amount) as total
from orders o join customers c on o.customer_id = c.customer_id
group by c.first_name, c.last_name
order by total desc»
limit 3;

--2. Temukan rata-rata nominal pesanan untuk setiap pelanggan!
select c.first_name, c.last_name, avg(total_amount) as rata_rata
from orders  o join customers c on o.customer_id = c.customer_id
group by c.first_name, c.last_name;

--3. Temukan semua karyawan yang telah menyelesaikan lebih dari 4 tiket support!
select e.first_name, e.last_name, count(st.employee_id) as total
from employees e join supporttickets st on e.employee_id = st.employee_id 
group by e.first_name, e.last_name
having count(st.employee_id) > 4;

--4. Temukan semua produk yang belum pernah dipesan!
select p.product_name
from products p left join orderdetails od on p.product_id = od.product_id
where od.product_id is null;

--5. Hitung total pendapatan yang dihasilkan dari penjualan produk!
--Total Pendapatan tiap produk
select p.product_name, sum(od.unit_price)
from products p inner join orderdetails od on p.product_id = od.product_id
group by p.product_name
order by sum(od.unit_price) desc;

--Total Pendapatan Gabungan
select sum(unit_price) as total_pendapatan
from orderdetails o;

--6. Temukan harga rata-rata produk untuk setiap kategori dan temukan kategori dengan harga rata-rata lebih dari $500!
--Harga rata-rata produk untuk setiap kategori
select category, avg(price) as avg_semua_kategori
from products p
group by category
order by avg(price) desc;

--Kategori dengan harga rata-rata lebih dari $500
select category, avg(price) as avg_lebih_dari_500
from products p
group by category
having avg(price) > 500
order by avg(price) desc;

--7. Temukan pelanggan yang telah membuat setidaknya satu pesanan dengan total jumlah lebih dari $1000!
--Total pengeluaran setiap pelanggan
select c.first_name, c.last_name, date(o.order_date) as tanggal, sum(o.total_amount) as total_pengeluaran_cust
from customers c join orders o on c.customer_id = o.customer_id 
group by c.first_name , c.last_name , date(o.order_date)
order by c.first_name , c.last_name , tanggal;

--Pelanggan yang mengeluarkan lebih dari $1000 dalam satu pesanan
select c.first_name, c.last_name, date(o.order_date) as tanggal, sum(o.total_amount) as total_pengeluaran_cust
from customers c join orders o on c.customer_id = o.customer_id 
group by c.first_name , c.last_name , date(o.order_date)
having sum(o.total_amount) > 1000
order by c.first_name , c.last_name , tanggal;
