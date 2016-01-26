--drop table sab_dir_raw_asci;

create table sab_dir_raw_asci 
(
--------------------------------
-- Personal Member Details
--------------------------------
"ContactID" 
,"pid" 					
,"Salutation" 			
,"FirstName" 			
,"LastName" 				
,"Email" 				 --PRIMARY KEY (NOT NULL)
,"Phone" 				
,"Phone_2" 				 --DUPLICATED
,"Phone number" 			 --DUPLICATED
,"Address1" 				
,"Address2" 				
,"Street Address" 		 
,"City" 					
,"Zip Code" 				
,"Zip/Postal Code" 		
,"State/Province" 		
,"email" 				 --DUPLICAED
,"Language" 				
,"Country" 				
,"Continent" 			 
-- Level II
,"Unsubscribed" 			
,"CreationDate" 			 
-- Level III
,"Clinical Job Position" 				
,"Clinical Job Position - Other" 		
,"Clinical Work Focus" 					
,"Conversion to SAB" 					
,"Core" 									
,"Customer List" 						
,"Degree" 								
,"Department" 							
,"Employment Sector" 					
,"Employment Sector - Other" 			
,"Groups" 								
,"Job Position" 							
,"Job Position - Other" 					
,"Laboratory Type" 						
,"Organization" 							

----------------------------------------------------
-- SAB Notes and Tags
----------------------------------------------------
	,"Admin Notes" 							
	,"Account Notes" 						
	,"Points" 								
	,"15-102 IUPAC Scrape 6/22/15" 			
	,"ExternalDataReference_2" 				
	,"Link/Search Terms" 					
	,"MissingInfo" 							
	,"Needs AutoConverted" 					
	,"Legacy_PRDB" 							
	,"PRID" 									
	,"Recruitment Note" 						
	,"Recruitment Notes" 					
	,"Recruitment Tag" 						
	,"ReferredByName" 						
	,"ReferredByPID" 						
	,"RemoveTTs" 						
	,"ExternalDataReference" 				
	,"SAB Team" 								
	,"Segment" 								
	,"Survey Response" 						
	,"UserType" 								
	,"account_status" 						
	,"contact_hash" 							
	,"last_incidence_date" 												
	,"temp-tag-15-170" 						
	,"temp_project_flag" 					
	,"temp_project_flag10" 					
	,"temp_project_flag2" 
	,"temp_project_flag3" 					
	,"temp_project_flag4" 					
	,"temp_project_flag5" 					
	,"temp_project_flag6" 					
	,"temp_project_flag7" 					
	,"temp_project_flag8" 					
	,"temp_project_flag9" 					
	,"temp_projectflag10" 					
	,"temp_projectflag3" 					
	,"temp_projectflag4" 					
	,"Temp_project_flag9"					

----------------------------------------------------------------------------------------	
-- Specific Research Area details
----------------------------------------------------------------------------------------
		"Research Areas - Other" 												,
		"Research/Work Focus" 													,
		"Biopharmaceutical Drug Development Role - Assay Development" 			,
		"Biopharmaceutical Drug Development Role - Downstream ProcessDev" 		,
		"Biopharmaceutical Drug Development Role - Formulation Dev" 			,
		"Biopharmaceutical Drug Development Role - Manufacturing" 				,
		"Biopharmaceutical Drug Development Role - Other" 						,
		"Biopharmaceutical Drug Development Role - Other (specify)" 			,
		"Biopharmaceutical Drug Development Role - QA/QC" 						,
		"Biopharmaceutical Drug Development Role - Upstream Process Dev" 		,
		"CDD - Blood Bank" 														,
		"CDD - Clinical Chemistry" 												,
		"CDD - Cytopathology" 													,
		"CDD - Diagnostic Imaging/Radiology" 									,
		"CDD - Drug Testing" 													,
		"CDD - Hematology and Coagulation" 										,
		"CDD - Histopathology" 													,
		"CDD - Immunology" 														,
		"CDD - Microbiology" 													,
		"CDD - Molecular Diagnostics and Genetics (pharmageno,prenatal)" 		,
		"CDD - Other" 															,
		"CDD - Other (please specify)" 											,
		"CDD - Toxicology" 														,
		"CDD - Urinalysis" 														,
		"Canc - Bladder" 														,
		"Canc - Brain" 															,
		"Canc - Breast" 														,
		"Canc - CNS, not brain" 												,
		"Canc - Cervical" 														,
		"Canc - Colon/rectal" 													,
		"Canc - Esophagus" 														,
		"Canc - Kidney" 														,
		"Canc - Leukemia" 														,
		"Canc - Liver" 															,
		"Canc - Lung" 															,
		"Canc - Lymphoma" 														,
		"Canc - Melanoma" 														,
		"Canc - Neuroblastoma" 													,
		"Canc - Other" 															,
		"Canc - Other (please specify)" 										,
		"Canc - Ovarian" 														,
		"Canc - Pancreas" 														,
		"Canc - Prostate"														,
		"Canc - Uterine" 														,
		"Cert - Allergy and Immunology" 										,
		"Cert - Anesthesiology" 												,
		"Cert - Colon and Rectal Surgery" 										,
		"Cert - Dermatology" 													,
		"Cert - Emergency Medicine" 											,
		"Cert - Family Medicine" 												,
		"Cert - I do not have any board certifications" 						,
		"Cert - Internal Medicine" 												,
		"Cert - Medical Genetics" 												,
		"Cert - Neurological Surgery" 											,
		"Cert - Neurology" 														,
		"Cert - Nuclear Medicine" 												,
		"Cert - Obstetrics and Gynecology" 										,
		"Cert - Ophthalmology" 													,
		"Cert - Orthopaedic Surgery" 											,
		"Cert - Other" 															,
		"Cert - Other (please specify)" 										,
		"Cert - Otolaryngology" 												,
		"Cert - Pathology" 														,
		"Cert - Pediatrics" 													,
		"Cert - Physical Medicine and Rehabilitation" 							,
		"Cert - Plastic Surgery" 												,
		"Cert - Preventive Medicine" 											,
		"Cert - Psychiatry" 													,
		"Cert - Radiation Oncology" 											,
		"Cert - Radiology" 														,
		"Cert - Surgery" 														,
		"Cert - Thoracic Surgery" 												,
		"Cert - Urology" 														,
		"Dis - Autoimmune disease" 												,
		"Dis - Cancer" 															,
		"Dis - Cardiovascular disease" 											,
		"Dis - Diabetes" 														,
		"Dis - Endocrine system disorders" 										,
		"Dis - Infectious diseases" 											,
		"Dis - Inflammation" 													,
		"Dis - My work does not focus on any particular disease" 				,
		"Dis - Neurological disorders" 											,
		"Dis - Other" 															,
		"Dis - Other (please specify)" 											,
		"Food/Beverage Science - Flavor Chemistry/Sensory Science" 				,
		"Food/Beverage Science - Food/Beverage Microbiology" 					,
		"Food/Beverage Science - Other" 										,
		"Food/Beverage Science - Other (please specify)" 						,
		"Food/Beverage Science - Product R&D" 									,
		"Food/Beverage Science - QA/QC" 										,
		"Food/Beverage Science - Regulations/Compliance" 						,
		"Food/Beverage Science - Research" 										,
		"ForenSci - Biological/Medical Examination" 							,
		"ForenSci - Physical Examinations" 										,
		"Number of Beds" 														,
		"RA - Agriculture" 														,
		"RA - Analytical Chemistry" 											,
		"RA - Anatomy" 															,
		"RA - Biochemistry" 													,
		"RA - Biodefense" 														,
		"RA - Bioinformatics"													,
		"RA - Biophysics" 														,
		"RA - Bioprocessing" 													,
		"RA - Biostatistics" 													,
		"RA - Botany" 															,
		"RA - Cancer/Oncology" 													,
		"RA - Cell Biology" 													,
		"RA - Clinical Diagnostics" 											,
		"RA - Developmental Biology" 											,
		"RA - Drug Discovery/R&D" 												,
		"RA - Environmental Science" 											,
		"RA - Epigenetics/Epigenomics" 											,
		"RA - Food Science" 													,
		"RA - Forensics" 														,
		"RA - Gene Therapy" 													,
		"RA - Genetics/Genomics" 												,
		"RA - Hematology" 														,
		"RA - Histology" 														,
		"RA - Immunology/Virology" 												,
		"RA - Material Sciences/Polymer Chemistry" 								,
		"RA - Medicinal Chemistry" 												,
		"RA - Microbiology" 													,
		"RA - Molecular Biology" 												,
		"RA - Molecular Diagnostics" 											,
		"RA - Nanotechnology" 													,
		"RA - Neuroscience" 													,
		"RA - Organic Chemistry" 												,
		"RA - Other (please specify)" 											,
		"RA - Pathology" 														,
		"RA - Pharmacogenomics" 												,
		"RA - Protein Sciences" 												,
		"RA - Proteomics" 														,
		"RA - Regenerative Medicine"											,
		"RA - Stem Cell Biology" 												,
		"RA - Synthetic Biology" 												,
		"RA - Toxicology" 														,
		"RA - Zoology" 															,
		"SDI - Application Focus" 												,
		"SDI - Application Focus Other" 										,
		"SDI - Contact" 														,
		"SDI - Food Survey"														,
		"SDI - Industry" 														,
		"SDI - Industry Other" 													,
		"SDI - Lab Function"													,
		"SDI - Lab Function Other" 												,
		"SDI - Potential Duplicate" 											,
		"SDI - Reference ID" 													,
		"SDI - Source" 															,
		"SDI Technologies - AA" 												,
		"SDI Technologies - Arc/Spark" 											,
		"SDI Technologies - Bioinformatics and Cheminformatics" 				,
		"SDI Technologies - Biological Safety Cabinets" 						,
		"SDI Technologies - Calorimetry" 										,
		"SDI Technologies - Capillary electrophoresis" 							,
		"SDI Technologies - Centrifugation" 									,
		"SDI Technologies - Chemical Sensors" 									,
		"SDI Technologies - Color Measurement" 									,
		"SDI Technologies - Confocal Microscopy" 								,
		"SDI Technologies - Continuous Flow Analysis and Discrete Analyz" 		,
		"SDI Technologies - Dissolution Testing" 								,
		"SDI Technologies - ELISA" 												,
		"SDI Technologies - ELN" 												,
		"SDI Technologies - Electrochemistry" 									,
		"SDI Technologies - Electron Microscopes" 								,
		"SDI Technologies - Electron Microscopy" 								,
		"SDI Technologies - Electrophoresis" 									,
		"SDI Technologies - Electrophysiology/Patch Clamp" 						,
		"SDI Technologies - Ellipsometry" 										,
		"SDI Technologies - Extraction" 										,
		"SDI Technologies - FT-MS" 												,
		"SDI Technologies - Fermentors/Bioreactors" 							,
		"SDI Technologies - Flash Chromatography" 								,
		"SDI Technologies - Flow Cytometry" 									,
		"SDI Technologies - Fluorescence and Luminescence" 						,
		"SDI Technologies - Fume Hoods" 										,
		"SDI Technologies - GC" 												,
		"SDI Technologies - GC-MS" 												,
		"SDI Technologies - GC/MS" 												,
		"SDI Technologies - Gas Chromatography" 								,
		"SDI Technologies - HCS" 												,
		"SDI Technologies - HPLC" 												,
		"SDI Technologies - High Content Screening" 							,
		"SDI Technologies - ICP" 												,
		"SDI Technologies - ICP-MS" 											,
		"SDI Technologies - In Vivo Animal Imaging" 							,
		"SDI Technologies - Incubators" 										,
		"SDI Technologies - Infrared (IR)" 										,
		"SDI Technologies - Inorganic Elemental Analyzers" 						,
		"SDI Technologies - Ion Chromatography" 								,
		"SDI Technologies - LIMS" 												,
		"SDI Technologies - Label-Free Detection/Biosensors" 					,
		"SDI Technologies - Laboratory Balances" 								,
		"SDI Technologies - Life Science Instrumentation" 						,
		"SDI Technologies - Liquid Handling" 									,
		"SDI Technologies - Low Pressure Liquid Chromatography" 				,
		"SDI Technologies - MALDI-TOF" 											,
		"SDI Technologies - MS" 												,
		"SDI Technologies - Magnetic Sector" 									,
		"SDI Technologies - Materials Characterization" 						,
		"SDI Technologies - Microarrays" 										,
		"SDI Technologies - Microplate Readers" 								,
		"SDI Technologies - Microwave Assisted Chemistry" 						,
		"SDI Technologies - Molecular Spectroscopy" 							,
		"SDI Technologies - NMR" 												,
		"SDI Technologies - Near Infrared (NIR)" 								,
		"SDI Technologies - Nucleic Acid Prep and Cell Separation" 				,
		"SDI Technologies - Optical Microscopy" 								,
		"SDI Technologies - Organic Elemental Analyzers" 						,
		"SDI Technologies - PCR" 												,
		"SDI Technologies - Particle Characterization" 							,
		"SDI Technologies - Particle Size" 										,
		"SDI Technologies - Petroleum Analyzers" 								,
		"SDI Technologies - Physical Testing" 									,
		"SDI Technologies - Polarimetry/Refractometry" 							,
		"SDI Technologies - Portable Instruments" 								,
		"SDI Technologies - Portable and In-Field MS"	 						,
		"SDI Technologies - Process LC" 										,
		"SDI Technologies - Radioactivity" 										,
		"SDI Technologies - Raman" 												,
		"SDI Technologies - Robotics" 											,
		"SDI Technologies - SDMS" 												,
		"SDI Technologies - Scanning Probe Microscopy" 							,
		"SDI Technologies - Sequencers" 										,
		"SDI Technologies - Single Quadrupole LC/MS" 							,
		"SDI Technologies - Surface Analyzers" 									,
		"SDI Technologies - Synthesizers" 										,
		"SDI Technologies - TOC and Other Sum Parameters" 						,
		"SDI Technologies - Tandem LC/MS" 										,
		"SDI Technologies - Thermal Analysis" 									,
		"SDI Technologies - Thin Layer Chromatography" 							,
		"SDI Technologies - Time of Flight LC-MS" 								,
		"SDI Technologies - Transfection" 										,
		"SDI Technologies - UV-Vis" 											,
		"SDI Technologies - Viscometry and Rheometry" 							,
		"SDI Technologies - XRD" 												,
		"SDI Technologies - XRF" 												,
		"SDI Technologies - Xray" 												,
		"SDI-TA Pre-existing" 													,
		"SE-Meta Field Name" 													,
		"Scientific Discipline - Agriculture" 									,
		"Scientific Discipline - Chemistry" 									,
		"Scientific Discipline - Environmental Sciences" 						,
		"Scientific Discipline - Food/Beverage" 								,
		"Scientific Discipline - Material Sciences" 							,
		"Scientific Discipline - Nanotechnology" 								,
		"Scientific Discipline - Other" 										,
		"Scientific Discipline - Other (please specify)" 						,
		"Scientific Discipline - Physical Sciences" 							,
		"TT - 2-D Gel Electrophoresis" 											,
		"TT - Bacteria Culture" 												,
		"TT - Calorimetry (including ITC, DSC)" 								,
		"TT - Cell-Based Assays" 												,
		"TT - Chromatography" 													,
		"TT - Classical End-Point PCR" 											,
		"TT - Cloning/Molecular Biology Techniques" 							,
		"TT - Confocal Microscopy" 												,
		"TT - DNA/RNA Microarrays" 												,
		"TT - Enzyme-linked Immunosorbent Assay (ELISA)" 						,
		"TT - Eukaryotic Cell/Tissue Culture" 									,
		"TT - Flow Cytometry" 													,
		"TT - Fluorescence Microscopy" 											,
		"TT - Gene Expression Analysis" 										,
		"TT - Genotyping" 														,
		"TT - High Content Screening" 											,
		"TT - High-Throughput Screening (HTS)" 									,
		"TT - Immunohistochemistry" 											,
		"TT - Label-Free Detection/Analysis (Biosensors, SPR, etc.)" 			,
		"TT - Light Microscopy" 												,
		"TT - Light Scattering (MALS, DLS)" 									,
		"TT - Mass Spectrometry" 												,
		"TT - Multiplex Bead Assays" 											,
		"TT - Next Generation Sequencing" 										,
		"TT - Other Tools or Techniques (please specify)" 						,
		"TT - Protein Purification & Separation" 								,
		"TT - Protein Structural Analysis (NMR, XRay Crystallography,CD)" 		,
		"TT - RNAi (including siRNA, miRNA)" 									,
		"TT - Real-Time PCR (including qPCR and RT-PCR)" 						,
		"TT - Sanger DNA Sequencing" 											,
		"TT - Single Nucleotide Polymorphism (genotyping, discovery)" 			,
		"TT - Stem Cell Culture/Analysis" 										,
		"TT - Western Blotting" 												,
		"TT - Chromatography_2" 												, --DUPLICAED
		"TT - Genotyping_2"														, --DUPLICAED
		"TT - Immunohistochemistry_2" 											, --DUPLICAED
		"ToM - Cell Based Therapies" 											,
		"ToM - Monoclonal Antibodies (mAbs)" 									,
		"ToM - Non-Antibody Protein Therapeutics" 								,
		"ToM - Nucleic Acid Based Therapeutics" 								,
		"ToM - Other" 															,
		"ToM - Other (please specify)" 											,
		"ToM - Small Molecule Therapeutics" 									,
		"ToM - Vaccines" 														,
		"Tools/Techniques - Other" 												
);