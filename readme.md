Ruby Programmer - Exercise 1
=============================

1. Fork this project.
2. Don't use external libraries for the conversion.
3. Create only a Ruby class or a set of classes (no web frameworks or Heroku
   please)
   4. Write tests

   Commit the important milestones and not just the final result!


Exercise description
--------------------

When user gives an arabic number, the system shows the english phrase of the
number.

For example:
<pre>
7    == seven
42   == forty-two
2001 == two thousand and one
1999 == nineteen hundred and ninety-nine
17999 == seventeen thousand nine hundred and ninety-nine
</pre>


# Some observations about the challenge:

Anomalies in wording made the challenge less straigh-forward:
- Zeroes must be dismissed, unless part of a tenth. Ex: 108 (one hundred and eight), 098, 19,070
- If the number was higher than 100, the last 2 digits needed an "and" before them. This needed to work with the previous rule too.
- Numbers from 1100 to 1999 needed to have a century-based notation (ex: nineteen hundred, eleven hundred)
