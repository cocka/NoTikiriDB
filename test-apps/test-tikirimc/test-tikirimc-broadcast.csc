<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <project>[CONTIKI_DIR]/tools/cooja/apps/mrm</project>
  <project>[CONTIKI_DIR]/tools/cooja/apps/mspsim</project>
  <project>[CONTIKI_DIR]/tools/cooja/apps/avrora</project>
  <project>[CONTIKI_DIR]/tools/cooja/apps/serial_forwarder</project>
  <simulation>
    <title>TikiriMC Test 1</title>
    <delaytime>0</delaytime>
    <randomseed>generated</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      se.sics.cooja.radiomediums.UDGM
      <transmitting_range>20.0</transmitting_range>
      <interference_range>20.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>1.0</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      se.sics.cooja.contikimote.ContikiMoteType
      <identifier>mtype710</identifier>
      <description>Contiki Mote Type #1</description>
      <contikiapp>[CONFIG_DIR]/test-broadcast.c</contikiapp>
      <commands>make test-broadcast.cooja TARGET=cooja</commands>
      <moteinterface>se.sics.cooja.interfaces.Position</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.Battery</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>se.sics.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <symbols>false</symbols>
      <commstack>Rime</commstack>
    </motetype>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>47.811728353496264</x>
        <y>29.698433113384024</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>1</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>38.16245900566666</x>
        <y>3.236475322561827</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>2</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>46.024090674883304</x>
        <y>55.395724743445264</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>3</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>49.3759113222826</x>
        <y>82.65719934229284</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>4</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>0.4393298702529358</x>
        <y>79.87129963736679</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>5</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>70.92591975711345</x>
        <y>39.805677982423624</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>6</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>33.95753634424585</x>
        <y>82.65719934229284</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>7</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>61.66592036274668</x>
        <y>61.65245661859061</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>8</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>65.35083745646195</x>
        <y>12.834818697977635</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>9</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>26.36007621014079</x>
        <y>67.90918849373595</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>10</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>20.550253754648683</x>
        <y>27.463886015117826</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>11</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>34.18099105407247</x>
        <y>19.866425881012763</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>12</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>33.9898043954037</x>
        <y>52.425785916875434</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>13</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>69.9337446263316</x>
        <y>52.2673588058726</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>14</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>14.070067169676719</x>
        <y>42.882260993154574</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>15</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>19.656434915342203</x>
        <y>52.714268225525835</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>16</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>36.84549706581487</x>
        <y>34.89613655533219</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>17</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>25.24280266100769</x>
        <y>41.9884421538481</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>18</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>56.52646203673442</x>
        <y>45.11680809142077</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>19</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>16.528068977769532</x>
        <y>81.53992579315975</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>20</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>62.55973920205316</x>
        <y>29.698433113384024</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>21</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>8.1675171464478</x>
        <y>90.11154616170435</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>22</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>77.53120476043667</x>
        <y>63.88700371685681</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>23</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>47.364818933843026</x>
        <y>12.045511037081079</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>24</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
    <mote>
      se.sics.cooja.contikimote.ContikiMote
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>10.718246522277425</x>
        <y>66.121550815123</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.contikimote.interfaces.ContikiMoteID
        <id>25</id>
      </interface_config>
      <motetype_identifier>mtype710</motetype_identifier>
    </mote>
  </simulation>
  <plugin>
    se.sics.cooja.plugins.SimControl
    <width>440</width>
    <z>2</z>
    <height>172</height>
    <location_x>0</location_x>
    <location_y>0</location_y>
    <minimized>false</minimized>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.Visualizer
    <plugin_config>
      <skin>se.sics.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.LEDVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.TrafficVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <viewport>4.47517978375085 0.0 0.0 4.47517978375085 18.033919846246214 30.094172521907026</viewport>
    </plugin_config>
    <width>450</width>
    <z>1</z>
    <height>554</height>
    <location_x>-9</location_x>
    <location_y>173</location_y>
    <minimized>false</minimized>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.LogListener
    <plugin_config>
      <filter>10</filter>
    </plugin_config>
    <width>829</width>
    <z>0</z>
    <height>722</height>
    <location_x>440</location_x>
    <location_y>0</location_y>
    <minimized>false</minimized>
  </plugin>
</simconf>

