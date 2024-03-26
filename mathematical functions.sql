/* Ceil $ Floor */
/* Ceil  function retrns teh smallest integer value that is greater than or equal rto a number */
/* Floor function returns the largest integer  value that is equal rto or less than a number */


select
	order_line,
	CEIL (sales),
	FLOOR (sales) from sales where discount >0;
	
/* Random */
/* a = 10
	b = 50 */
select random(), random()*40+10, floor(random()+40)+10;

/* SETSEED (seed) it can have a value between 1.0 and -1.0 inclusive */
select setseed(0.5);
select random (); --0.98516
select random (); --0.8253
