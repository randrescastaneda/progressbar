{smcl}
{* *! version 1.2.1  07mar2013}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "examplehelpfile##syntax"}{...}
{viewerjumpto "Description" "examplehelpfile##description"}{...}
{viewerjumpto "Options" "examplehelpfile##options"}{...}
{viewerjumpto "Remarks" "examplehelpfile##remarks"}{...}
{viewerjumpto "Examples" "examplehelpfile##examples"}{...}
{title:Title}

{phang}
{bf:progressbar} {hline 2} Display a progress bar when undertaking loops or repeated tasks.


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:progressbar}
[{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}

{syntab:Initialise}
{synopt:{opt init}}set up the progress bar{p_end}
{synopt:{opt type()}}List the types of (nested) loop(s){p_end}
{synopt:{opt start}}List the starting values for each loop{p_end}
{synopt:{opt end}}List the ending values for each loop{p_end}
{synopt:{opt step}}List the step sizes for each loop{p_end}
{synopt:{opt list#}}Pass the list used in a foreach loop for list #{p_end}
{synopt:{opt time}}Records the starting time for the loop(s){p_end}

{syntab:Display}
{synopt:{opt width(#)}}Specify the width in characters of the progressbar display{p_end}
{synopt:{opt start}}List the starting values for each loop{p_end}
{synopt:{opt time}}Calculate and display the time elapsed and remaining{p_end}
{synopt:{opt display}}Show the progress bar without updating the counter{p_end}
{synopt:{opt start}}Show the progress bar without clearing the screen{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}


{marker description}{...}
{title:Description}

{pstd}
{cmd:progressbar} displays a progress bar for use in loops or repeated tasks.  It is able to track the progress of nested loops incorporating both foreach and forvalues loops.  It can also be used outside of loops where the number of tasks is known.

{cmd:progressbar} should be called once before the repeated tasks begin to set up the tracking.  It can then be called each time the progress bar needs to be updated and displayed.  Options allow the display of the progress bar to be customised, and it can also estimate the time to completion.


{marker options}{...}
{title:Options}

{dlgtab:Initialisation}

{phang}
{opt init} This option must be specified when the command is called before the loops begin. It allows the calculating of the number of iterations expected in the loops.

{phang}
{opt type()} This indicates the number and type of nested loops.  There are two types of loop supported:
v	forvalues
e 	foreach
Specify in order the types of nested loop e.g. "e v v"
Any number of forvalues loops are supported; up to 10 nested foreach loops are supported

{phang}
{opt start()} List the starting values for each of the forvalues loops
e.g. 1 1 3

{phang}
{opt end()} list the ending value for each of the forvalues loops
e.g. 10 100 6

{phang}
{opt step()} Specify the step values for each of the forvalue loops
If they are all 1, then this option can be omitted, otheriwse it must be specified
e.g. 2 1 1

{phang}
{opt list#()} Include the list for each of the foreach loops in turn, where # should be 1 for the first list, 2 for teh second list, etc.  progressbar supports up to 10 nested foreach loops.

{phang}
{opt time()}
This option needs to be specified in both the initiation and looping commands.  Here it records the start time of the looped tasks.


{phang}
{opt width()}
Allows the user to specify the width of the bar displayed in characters.  The progress bar will be scaled when displayed to fit within the character limit.  This is useful when the width of the dispaly is limited, or when the progress bar needs to fit with other output being displayed. The default is 80 characters.

{phang}
{opt loud} This option prevents the -progressbar- from clearing the screen, allowing the output to be preserved.

{phang}
{opt loud} This option displays the progress bar without incrementing the counter.

{phang}
{opt time} This option needs to be specified in both the initiation and looping commands for it to work. It estimates the remaining time for the loop, assuming constant runtimes.


{marker remarks}{...}
{title:Remarks}

{pstd}
For detailed information on the whatever statistic, see {bf:[R] intro}.


{marker examples}{...}
{title:Examples}

{phang}{cmd:. whatever mpg weight}{p_end}

{phang}{cmd:. whatever mpg weight, meanonly}{p_end}
