<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Go by Example: การใช้งานลูป For</title>
    <link rel=stylesheet href="site.css">
  </head>
  <script type="text/javascript">
    if (window.location.host == "gobyexample.com") {
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-34996217-1']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    }
  </script>
  <body>
    <div class="example" id="for">
      <h2><a href="./">Go by Example</a>: การใช้งานลูป For</h2>
      
      <table>
        
        <tr>
          <td class="docs">
            <p>การวนลูบในภาษา Go มีเพียงการใช้ <code>for</code> เท่านั้น<br/>
มาดูตัวอย่างการใช้งานขั้นพื้นฐาน 3 รูปแบบกัน</p>

          </td>
          <td class="code empty leading">
	        
            
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            
          </td>
          <td class="code leading">
	        <a href="http://play.golang.org/p/ovEOqMs8Tk"><img title="Run code" src="play.png" class="run" /></a>
            <div class="highlight"><pre><span class="kn">package</span> <span class="nx">main</span>
</pre></div>

          </td>
        </tr>
        
        <tr>
          <td class="docs">
            
          </td>
          <td class="code leading">
	        
            <div class="highlight"><pre><span class="kn">import</span> <span class="s">&quot;fmt&quot;</span>
</pre></div>

          </td>
        </tr>
        
        <tr>
          <td class="docs">
            
          </td>
          <td class="code leading">
	        
            <div class="highlight"><pre><span class="kd">func</span> <span class="nx">main</span><span class="p">()</span> <span class="p">{</span>
</pre></div>

          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>การใช้งานส่วนใหญ่ ทำการตรวจสอบเพียงเงื่อนไขเดียว</p>

          </td>
          <td class="code leading">
	        
            <div class="highlight"><pre>    <span class="nx">i</span> <span class="o">:=</span> <span class="mi">1</span>
    <span class="k">for</span> <span class="nx">i</span> <span class="o">&lt;=</span> <span class="mi">3</span> <span class="p">{</span>
        <span class="nx">fmt</span><span class="p">.</span><span class="nx">Println</span><span class="p">(</span><span class="nx">i</span><span class="p">)</span>
        <span class="nx">i</span> <span class="p">=</span> <span class="nx">i</span> <span class="o">+</span> <span class="mi">1</span>
    <span class="p">}</span>
</pre></div>

          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>กำหนดค่าเริ่มต้น เงื่อนไข และการเพิ่มค่าหลังจากทำงานเสร็จในแต่ละรอบ</p>

          </td>
          <td class="code leading">
	        
            <div class="highlight"><pre>    <span class="k">for</span> <span class="nx">j</span> <span class="o">:=</span> <span class="mi">7</span><span class="p">;</span> <span class="nx">j</span> <span class="o">&lt;=</span> <span class="mi">9</span><span class="p">;</span> <span class="nx">j</span><span class="o">++</span> <span class="p">{</span>
        <span class="nx">fmt</span><span class="p">.</span><span class="nx">Println</span><span class="p">(</span><span class="nx">j</span><span class="p">)</span>
    <span class="p">}</span>
</pre></div>

          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>ถ้าในลูบ <code>for</code> ไม่มีการตรวจสอบเงื่อนไข<br/>
จะหยุดทำงานเมื่อเจอคำสั่ง <code>break</code> หรือ <code>return</code></p>

          </td>
          <td class="code empty leading">
	        
            
          </td>
        </tr>
        
        <tr>
          <td class="docs">
            
          </td>
          <td class="code">
	        
            <div class="highlight"><pre>    <span class="k">for</span> <span class="p">{</span>
        <span class="nx">fmt</span><span class="p">.</span><span class="nx">Println</span><span class="p">(</span><span class="s">&quot;loop&quot;</span><span class="p">)</span>
        <span class="k">break</span>
    <span class="p">}</span>
<span class="p">}</span>
</pre></div>

          </td>
        </tr>
        
      </table>
      
      <table>
        
        <tr>
          <td class="docs">
            
          </td>
          <td class="code leading">
	        
            <div class="highlight"><pre><span class="gp">$</span> go run <span class="k">for</span>.go
<span class="go">1</span>
<span class="go">2</span>
<span class="go">3</span>
<span class="go">7</span>
<span class="go">8</span>
<span class="go">9</span>
<span class="go">loop</span>
</pre></div>

          </td>
        </tr>
        
        <tr>
          <td class="docs">
            <p>เราจะเห็นการทำงานเช่นเดียวกับลูป <code>for</code>
ในรูปแบบอื่น ๆ อีก
เช่น <code>range</code>, channels และ โครงสร้างข้อมูลอื่น ๆ</p>

          </td>
          <td class="code empty">
	        
            
          </td>
        </tr>
        
      </table>
      
      
      <p class="next">
        Next example: <a href="if-else">การตรวจสอบเงื่อนไขด้วย If/Else</a>
      </p>
      
      <p class="footer">
        by <a href="https://twitter.com/mmcgrana">@mmcgrana</a> | <a href="mailto:mmcgrana@gmail.com">feedback</a> | <a href="https://github.com/mmcgrana/gobyexample/blob/master/examples/for">source</a> | <a href="https://github.com/mmcgrana/gobyexample#license">license</a>
      </p>
    </div>
  </body>
</html>
