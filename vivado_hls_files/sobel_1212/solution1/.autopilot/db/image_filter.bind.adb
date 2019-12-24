<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>image_filter</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>hostmem_1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>hostmem_2</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>in_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>in.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>out_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>out.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>rows</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>rows</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>cols</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>cols</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>20</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>out_V_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>out.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>60</item>
					<item>61</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>in_V_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>in.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>62</item>
					<item>63</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>out_V_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>65</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>in_stream_V_V</name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>21</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>21</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>in_stream.V.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>66</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name>gray_stream_V_V</name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>23</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>23</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>gray_stream.V.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>67</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>22</id>
						<name>gaussian_stream_x_V_s</name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>25</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>25</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>gaussian_stream_x.V.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>68</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>25</id>
						<name>gaussian_stream_y_V_s</name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>26</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>26</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>gaussian_stream_y.V.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>69</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>28</id>
						<name>sobel_stream_x_V_V</name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>28</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>28</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>sobel_stream_x.V.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>70</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>31</id>
						<name>sobel_stream_y_V_V</name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>29</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>29</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>sobel_stream_y.V.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>71</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>34</id>
						<name>addWeight_stream_V_V</name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>31</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>31</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>addWeight_stream.V.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>72</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>37</id>
						<name>out_stream_V_V</name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>33</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>33</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>out_stream.V.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>73</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>49</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>75</item>
					<item>76</item>
					<item>77</item>
					<item>78</item>
					<item>79</item>
					<item>80</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>50</id>
						<name></name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>49</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>49</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>82</item>
					<item>83</item>
					<item>84</item>
					<item>579</item>
					<item>580</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>51</id>
						<name></name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>86</item>
					<item>87</item>
					<item>88</item>
					<item>89</item>
					<item>578</item>
					<item>581</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>52</id>
						<name></name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>54</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>54</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>91</item>
					<item>92</item>
					<item>93</item>
					<item>576</item>
					<item>582</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>53</id>
						<name></name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>55</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>55</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>95</item>
					<item>96</item>
					<item>97</item>
					<item>577</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>54</id>
						<name></name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>57</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>57</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>99</item>
					<item>100</item>
					<item>101</item>
					<item>102</item>
					<item>574</item>
					<item>575</item>
					<item>583</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>55</id>
						<name></name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>59</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>59</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>104</item>
					<item>105</item>
					<item>106</item>
					<item>573</item>
					<item>584</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>56</id>
						<name></name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>61</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>61</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>108</item>
					<item>109</item>
					<item>110</item>
					<item>111</item>
					<item>572</item>
					<item>585</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>57</id>
						<name></name>
						<fileName>sobel_1212/core.cpp</fileName>
						<fileDirectory>/home/ecelrc/students/rli3/Vivado/hls_projects</fileDirectory>
						<lineNumber>72</lineNumber>
						<contextFuncName>image_filter</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/ecelrc/students/rli3/Vivado/hls_projects</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>sobel_1212/core.cpp</first>
											<second>image_filter</second>
										</first>
										<second>72</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>9</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_27">
				<Value>
					<Obj>
						<type>2</type>
						<id>64</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_28">
				<Value>
					<Obj>
						<type>2</type>
						<id>74</id>
						<name>Mem2Stream_Batch9</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Mem2Stream_Batch9&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_29">
				<Value>
					<Obj>
						<type>2</type>
						<id>81</id>
						<name>bgr2gray</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:bgr2gray&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_30">
				<Value>
					<Obj>
						<type>2</type>
						<id>85</id>
						<name>gaussianBlur</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:gaussianBlur&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_31">
				<Value>
					<Obj>
						<type>2</type>
						<id>90</id>
						<name>sobel_x</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:sobel_x&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_32">
				<Value>
					<Obj>
						<type>2</type>
						<id>94</id>
						<name>sobel_y</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:sobel_y&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_33">
				<Value>
					<Obj>
						<type>2</type>
						<id>98</id>
						<name>addWeighted</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:addWeighted&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_34">
				<Value>
					<Obj>
						<type>2</type>
						<id>103</id>
						<name>gray2bgr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:gray2bgr&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_35">
				<Value>
					<Obj>
						<type>2</type>
						<id>107</id>
						<name>Stream2Mem_Batch</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Stream2Mem_Batch&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_36">
				<Obj>
					<type>3</type>
					<id>58</id>
					<name>image_filter</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>20</count>
					<item_version>0</item_version>
					<item>7</item>
					<item>8</item>
					<item>9</item>
					<item>16</item>
					<item>19</item>
					<item>22</item>
					<item>25</item>
					<item>28</item>
					<item>31</item>
					<item>34</item>
					<item>37</item>
					<item>49</item>
					<item>50</item>
					<item>51</item>
					<item>52</item>
					<item>53</item>
					<item>54</item>
					<item>55</item>
					<item>56</item>
					<item>57</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>55</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_37">
				<id>61</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>7</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>63</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>65</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>9</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>66</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>67</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>19</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>68</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>22</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>69</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>25</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>70</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>28</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>71</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>31</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>72</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>34</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>73</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>49</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>49</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>77</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>49</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>49</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>79</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>49</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>49</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>81</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>85</source_obj>
				<sink_obj>51</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>87</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>51</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>51</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>51</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>91</id>
				<edge_type>1</edge_type>
				<source_obj>90</source_obj>
				<sink_obj>52</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>92</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>52</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>52</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>95</id>
				<edge_type>1</edge_type>
				<source_obj>94</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>96</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>97</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>99</id>
				<edge_type>1</edge_type>
				<source_obj>98</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>100</id>
				<edge_type>1</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>101</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>102</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>104</id>
				<edge_type>1</edge_type>
				<source_obj>103</source_obj>
				<sink_obj>55</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>105</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>55</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>106</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>55</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>108</id>
				<edge_type>1</edge_type>
				<source_obj>107</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>109</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>111</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>572</id>
				<edge_type>4</edge_type>
				<source_obj>55</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>573</id>
				<edge_type>4</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>55</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>574</id>
				<edge_type>4</edge_type>
				<source_obj>53</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>575</id>
				<edge_type>4</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>576</id>
				<edge_type>4</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>52</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>577</id>
				<edge_type>4</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>578</id>
				<edge_type>4</edge_type>
				<source_obj>50</source_obj>
				<sink_obj>51</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>579</id>
				<edge_type>4</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>580</id>
				<edge_type>4</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>50</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>581</id>
				<edge_type>4</edge_type>
				<source_obj>50</source_obj>
				<sink_obj>51</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>582</id>
				<edge_type>4</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>52</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>583</id>
				<edge_type>4</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>54</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>584</id>
				<edge_type>4</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>55</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>585</id>
				<edge_type>4</edge_type>
				<source_obj>55</source_obj>
				<sink_obj>56</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_92">
			<mId>1</mId>
			<mTag>image_filter</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>58</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>-1</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_93">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>8</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_94">
						<type>0</type>
						<name>Mem2Stream_Batch9_U0</name>
						<ssdmobj_id>49</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>5</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_95">
								<port class_id="29" tracking_level="1" version="0" object_id="_96">
									<name>in_V</name>
									<dir>1</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_97">
									<type>0</type>
									<name>Mem2Stream_Batch9_U0</name>
									<ssdmobj_id>49</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_98">
								<port class_id_reference="29" object_id="_99">
									<name>in_V_offset</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_97"></inst>
							</item>
							<item class_id_reference="28" object_id="_100">
								<port class_id_reference="29" object_id="_101">
									<name>out_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_97"></inst>
							</item>
							<item class_id_reference="28" object_id="_102">
								<port class_id_reference="29" object_id="_103">
									<name>out_V</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_97"></inst>
							</item>
							<item class_id_reference="28" object_id="_104">
								<port class_id_reference="29" object_id="_105">
									<name>out_V_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_97"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_106">
						<type>0</type>
						<name>bgr2gray_U0</name>
						<ssdmobj_id>50</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_107">
								<port class_id_reference="29" object_id="_108">
									<name>src_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_109">
									<type>0</type>
									<name>bgr2gray_U0</name>
									<ssdmobj_id>50</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_110">
								<port class_id_reference="29" object_id="_111">
									<name>dst_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_109"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_112">
						<type>0</type>
						<name>gaussianBlur_U0</name>
						<ssdmobj_id>51</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_113">
								<port class_id_reference="29" object_id="_114">
									<name>src_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_115">
									<type>0</type>
									<name>gaussianBlur_U0</name>
									<ssdmobj_id>51</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_116">
								<port class_id_reference="29" object_id="_117">
									<name>dst_x_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_115"></inst>
							</item>
							<item class_id_reference="28" object_id="_118">
								<port class_id_reference="29" object_id="_119">
									<name>dst_y_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_115"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_120">
						<type>0</type>
						<name>sobel_x_U0</name>
						<ssdmobj_id>52</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_121">
								<port class_id_reference="29" object_id="_122">
									<name>src_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_123">
									<type>0</type>
									<name>sobel_x_U0</name>
									<ssdmobj_id>52</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_124">
								<port class_id_reference="29" object_id="_125">
									<name>dst_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_123"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_126">
						<type>0</type>
						<name>sobel_y_U0</name>
						<ssdmobj_id>53</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_127">
								<port class_id_reference="29" object_id="_128">
									<name>src_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_129">
									<type>0</type>
									<name>sobel_y_U0</name>
									<ssdmobj_id>53</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_130">
								<port class_id_reference="29" object_id="_131">
									<name>dst_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_129"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_132">
						<type>0</type>
						<name>addWeighted_U0</name>
						<ssdmobj_id>54</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_133">
								<port class_id_reference="29" object_id="_134">
									<name>src_x_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_135">
									<type>0</type>
									<name>addWeighted_U0</name>
									<ssdmobj_id>54</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_136">
								<port class_id_reference="29" object_id="_137">
									<name>src_y_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
							<item class_id_reference="28" object_id="_138">
								<port class_id_reference="29" object_id="_139">
									<name>dst_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_135"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_140">
						<type>0</type>
						<name>gray2bgr_U0</name>
						<ssdmobj_id>55</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_141">
								<port class_id_reference="29" object_id="_142">
									<name>src_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_143">
									<type>0</type>
									<name>gray2bgr_U0</name>
									<ssdmobj_id>55</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_144">
								<port class_id_reference="29" object_id="_145">
									<name>dst_V_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_143"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_146">
						<type>0</type>
						<name>Stream2Mem_Batch_U0</name>
						<ssdmobj_id>56</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_147">
								<port class_id_reference="29" object_id="_148">
									<name>in_V_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_149">
									<type>0</type>
									<name>Stream2Mem_Batch_U0</name>
									<ssdmobj_id>56</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_150">
								<port class_id_reference="29" object_id="_151">
									<name>out_V</name>
									<dir>1</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_149"></inst>
							</item>
							<item class_id_reference="28" object_id="_152">
								<port class_id_reference="29" object_id="_153">
									<name>out_V_offset</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_149"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>9</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_154">
						<type>1</type>
						<name>in_stream_V_V</name>
						<ssdmobj_id>16</ssdmobj_id>
						<ctype>0</ctype>
						<depth>128</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_155">
							<port class_id_reference="29" object_id="_156">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_97"></inst>
						</source>
						<sink class_id_reference="28" object_id="_157">
							<port class_id_reference="29" object_id="_158">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_109"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_159">
						<type>1</type>
						<name>out_V_c</name>
						<ssdmobj_id>9</ssdmobj_id>
						<ctype>0</ctype>
						<depth>6</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_160">
							<port class_id_reference="29" object_id="_161">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_97"></inst>
						</source>
						<sink class_id_reference="28" object_id="_162">
							<port class_id_reference="29" object_id="_163">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_149"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_164">
						<type>1</type>
						<name>gray_stream_V_V</name>
						<ssdmobj_id>19</ssdmobj_id>
						<ctype>0</ctype>
						<depth>128</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_165">
							<port class_id_reference="29" object_id="_166">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_109"></inst>
						</source>
						<sink class_id_reference="28" object_id="_167">
							<port class_id_reference="29" object_id="_168">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_115"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_169">
						<type>1</type>
						<name>gaussian_stream_x_V_s</name>
						<ssdmobj_id>22</ssdmobj_id>
						<ctype>0</ctype>
						<depth>128</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_170">
							<port class_id_reference="29" object_id="_171">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_115"></inst>
						</source>
						<sink class_id_reference="28" object_id="_172">
							<port class_id_reference="29" object_id="_173">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_123"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_174">
						<type>1</type>
						<name>gaussian_stream_y_V_s</name>
						<ssdmobj_id>25</ssdmobj_id>
						<ctype>0</ctype>
						<depth>128</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_175">
							<port class_id_reference="29" object_id="_176">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_115"></inst>
						</source>
						<sink class_id_reference="28" object_id="_177">
							<port class_id_reference="29" object_id="_178">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_129"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_179">
						<type>1</type>
						<name>sobel_stream_x_V_V</name>
						<ssdmobj_id>28</ssdmobj_id>
						<ctype>0</ctype>
						<depth>128</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_180">
							<port class_id_reference="29" object_id="_181">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_123"></inst>
						</source>
						<sink class_id_reference="28" object_id="_182">
							<port class_id_reference="29" object_id="_183">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_184">
						<type>1</type>
						<name>sobel_stream_y_V_V</name>
						<ssdmobj_id>31</ssdmobj_id>
						<ctype>0</ctype>
						<depth>128</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_185">
							<port class_id_reference="29" object_id="_186">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_129"></inst>
						</source>
						<sink class_id_reference="28" object_id="_187">
							<port class_id_reference="29" object_id="_188">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_189">
						<type>1</type>
						<name>addWeight_stream_V_V</name>
						<ssdmobj_id>34</ssdmobj_id>
						<ctype>0</ctype>
						<depth>128</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_190">
							<port class_id_reference="29" object_id="_191">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_135"></inst>
						</source>
						<sink class_id_reference="28" object_id="_192">
							<port class_id_reference="29" object_id="_193">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_143"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_194">
						<type>1</type>
						<name>out_stream_V_V</name>
						<ssdmobj_id>37</ssdmobj_id>
						<ctype>0</ctype>
						<depth>128</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_195">
							<port class_id_reference="29" object_id="_196">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_143"></inst>
						</source>
						<sink class_id_reference="28" object_id="_197">
							<port class_id_reference="29" object_id="_198">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_149"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="34" tracking_level="1" version="0" object_id="_199">
		<states class_id="35" tracking_level="0" version="0">
			<count>14</count>
			<item_version>0</item_version>
			<item class_id="36" tracking_level="1" version="0" object_id="_200">
				<id>1</id>
				<operations class_id="37" tracking_level="0" version="0">
					<count>12</count>
					<item_version>0</item_version>
					<item class_id="38" tracking_level="1" version="0" object_id="_201">
						<id>7</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_202">
						<id>8</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_203">
						<id>9</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_204">
						<id>16</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_205">
						<id>19</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_206">
						<id>22</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_207">
						<id>25</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_208">
						<id>28</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_209">
						<id>31</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_210">
						<id>34</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_211">
						<id>37</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_212">
						<id>49</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_213">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_214">
						<id>49</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_215">
				<id>3</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_216">
						<id>50</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_217">
				<id>4</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_218">
						<id>50</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_219">
				<id>5</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_220">
						<id>51</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_221">
				<id>6</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_222">
						<id>51</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_223">
				<id>7</id>
				<operations>
					<count>2</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_224">
						<id>52</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_225">
						<id>53</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_226">
				<id>8</id>
				<operations>
					<count>2</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_227">
						<id>52</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_228">
						<id>53</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_229">
				<id>9</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_230">
						<id>54</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_231">
				<id>10</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_232">
						<id>54</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_233">
				<id>11</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_234">
						<id>55</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_235">
				<id>12</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_236">
						<id>55</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_237">
				<id>13</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_238">
						<id>56</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_239">
				<id>14</id>
				<operations>
					<count>33</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_240">
						<id>10</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_241">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_242">
						<id>12</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_243">
						<id>13</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_244">
						<id>14</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_245">
						<id>15</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_246">
						<id>17</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_247">
						<id>18</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_248">
						<id>20</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_249">
						<id>21</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_250">
						<id>23</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_251">
						<id>24</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_252">
						<id>26</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_253">
						<id>27</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_254">
						<id>29</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_255">
						<id>30</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_256">
						<id>32</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_257">
						<id>33</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_258">
						<id>35</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_259">
						<id>36</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_260">
						<id>38</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_261">
						<id>39</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_262">
						<id>40</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_263">
						<id>41</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_264">
						<id>42</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_265">
						<id>43</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_266">
						<id>44</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_267">
						<id>45</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_268">
						<id>46</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_269">
						<id>47</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_270">
						<id>48</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_271">
						<id>56</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_272">
						<id>57</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="39" tracking_level="0" version="0">
			<count>13</count>
			<item_version>0</item_version>
			<item class_id="40" tracking_level="1" version="0" object_id="_273">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="41" tracking_level="0" version="0">
					<id>0</id>
					<sop class_id="42" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="43" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_274">
				<inState>2</inState>
				<outState>3</outState>
				<condition>
					<id>1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_275">
				<inState>3</inState>
				<outState>4</outState>
				<condition>
					<id>2</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_276">
				<inState>4</inState>
				<outState>5</outState>
				<condition>
					<id>3</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_277">
				<inState>5</inState>
				<outState>6</outState>
				<condition>
					<id>4</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_278">
				<inState>6</inState>
				<outState>7</outState>
				<condition>
					<id>5</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_279">
				<inState>7</inState>
				<outState>8</outState>
				<condition>
					<id>6</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_280">
				<inState>8</inState>
				<outState>9</outState>
				<condition>
					<id>7</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_281">
				<inState>9</inState>
				<outState>10</outState>
				<condition>
					<id>8</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_282">
				<inState>10</inState>
				<outState>11</outState>
				<condition>
					<id>9</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_283">
				<inState>11</inState>
				<outState>12</outState>
				<condition>
					<id>10</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_284">
				<inState>12</inState>
				<outState>13</outState>
				<condition>
					<id>11</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_285">
				<inState>13</inState>
				<outState>14</outState>
				<condition>
					<id>12</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="45" tracking_level="0" version="0">
		<count>20</count>
		<item_version>0</item_version>
		<item class_id="46" tracking_level="0" version="0">
			<first>7</first>
			<second class_id="47" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>22</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>25</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>28</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>31</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>34</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>37</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>49</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>50</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>51</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>52</first>
			<second>
				<first>6</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>53</first>
			<second>
				<first>6</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>54</first>
			<second>
				<first>8</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>55</first>
			<second>
				<first>10</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>56</first>
			<second>
				<first>12</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>57</first>
			<second>
				<first>13</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="48" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="49" tracking_level="0" version="0">
			<first>58</first>
			<second class_id="50" tracking_level="0" version="0">
				<first>0</first>
				<second>13</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="51" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="52" tracking_level="1" version="0" object_id="_286">
			<region_name>image_filter</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>58</item>
			</basic_blocks>
			<nodes>
				<count>51</count>
				<item_version>0</item_version>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="53" tracking_level="0" version="0">
		<count>19</count>
		<item_version>0</item_version>
		<item class_id="54" tracking_level="0" version="0">
			<first>220</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>224</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>228</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>232</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>22</item>
			</second>
		</item>
		<item>
			<first>236</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>25</item>
			</second>
		</item>
		<item>
			<first>240</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>28</item>
			</second>
		</item>
		<item>
			<first>244</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>31</item>
			</second>
		</item>
		<item>
			<first>248</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>252</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>256</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>262</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>268</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>50</item>
				<item>50</item>
			</second>
		</item>
		<item>
			<first>274</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>54</item>
				<item>54</item>
			</second>
		</item>
		<item>
			<first>281</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>51</item>
				<item>51</item>
			</second>
		</item>
		<item>
			<first>288</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>53</item>
				<item>53</item>
			</second>
		</item>
		<item>
			<first>294</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>52</item>
				<item>52</item>
			</second>
		</item>
		<item>
			<first>300</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>56</item>
				<item>56</item>
			</second>
		</item>
		<item>
			<first>308</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>49</item>
				<item>49</item>
			</second>
		</item>
		<item>
			<first>320</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>55</item>
				<item>55</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="56" tracking_level="0" version="0">
		<count>9</count>
		<item_version>0</item_version>
		<item class_id="57" tracking_level="0" version="0">
			<first>addWeight_stream_V_V_fu_248</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>gaussian_stream_x_V_s_fu_232</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>22</item>
			</second>
		</item>
		<item>
			<first>gaussian_stream_y_V_s_fu_236</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>25</item>
			</second>
		</item>
		<item>
			<first>gray_stream_V_V_fu_228</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>in_stream_V_V_fu_224</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>out_V_c_fu_220</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>out_stream_V_V_fu_252</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>sobel_stream_x_V_V_fu_240</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>28</item>
			</second>
		</item>
		<item>
			<first>sobel_stream_y_V_V_fu_244</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>31</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>8</count>
		<item_version>0</item_version>
		<item>
			<first>grp_Mem2Stream_Batch9_fu_308</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>49</item>
				<item>49</item>
			</second>
		</item>
		<item>
			<first>grp_Stream2Mem_Batch_fu_300</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>56</item>
				<item>56</item>
			</second>
		</item>
		<item>
			<first>grp_addWeighted_fu_274</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>54</item>
				<item>54</item>
			</second>
		</item>
		<item>
			<first>grp_bgr2gray_fu_268</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>50</item>
				<item>50</item>
			</second>
		</item>
		<item>
			<first>grp_gaussianBlur_fu_281</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>51</item>
				<item>51</item>
			</second>
		</item>
		<item>
			<first>grp_gray2bgr_fu_320</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>55</item>
				<item>55</item>
			</second>
		</item>
		<item>
			<first>grp_sobel_x_fu_294</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>52</item>
				<item>52</item>
			</second>
		</item>
		<item>
			<first>grp_sobel_y_fu_288</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>53</item>
				<item>53</item>
			</second>
		</item>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>2</count>
		<item_version>0</item_version>
		<item>
			<first>in_V_read_read_fu_262</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>out_V_read_read_fu_256</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="58" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>11</count>
		<item_version>0</item_version>
		<item>
			<first>326</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>331</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>336</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>342</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>348</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>354</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>22</item>
			</second>
		</item>
		<item>
			<first>360</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>25</item>
			</second>
		</item>
		<item>
			<first>366</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>28</item>
			</second>
		</item>
		<item>
			<first>372</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>31</item>
			</second>
		</item>
		<item>
			<first>378</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>384</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>37</item>
			</second>
		</item>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>11</count>
		<item_version>0</item_version>
		<item>
			<first>addWeight_stream_V_V_reg_378</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>gaussian_stream_x_V_s_reg_354</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>22</item>
			</second>
		</item>
		<item>
			<first>gaussian_stream_y_V_s_reg_360</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>25</item>
			</second>
		</item>
		<item>
			<first>gray_stream_V_V_reg_348</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>in_V_read_reg_331</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>in_stream_V_V_reg_342</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>out_V_c_reg_336</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>out_V_read_reg_326</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>out_stream_V_V_reg_384</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>sobel_stream_x_V_V_reg_366</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>28</item>
			</second>
		</item>
		<item>
			<first>sobel_stream_y_V_V_reg_372</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>31</item>
			</second>
		</item>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="59" tracking_level="0" version="0">
		<count>6</count>
		<item_version>0</item_version>
		<item class_id="60" tracking_level="0" version="0">
			<first>cols</first>
			<second>
				<count>0</count>
				<item_version>0</item_version>
			</second>
		</item>
		<item>
			<first>hostmem_1</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>49</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>hostmem_2</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>56</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>in_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>8</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>out_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>7</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>rows</first>
			<second>
				<count>0</count>
				<item_version>0</item_version>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="61" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>9</count>
		<item_version>0</item_version>
		<item class_id="62" tracking_level="0" version="0">
			<first>9</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>16</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>19</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>22</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>25</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>28</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>31</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>34</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>37</first>
			<second>FIFO</second>
		</item>
	</node2core>
</syndb>
</boost_serialization>
