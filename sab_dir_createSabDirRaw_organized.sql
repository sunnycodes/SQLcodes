--drop table sab_dir_raw_asci;

create table sab_dir_raw_asci 
(
--------------------------------
-- Personal Member Details
--------------------------------
"ContactID" 			varchar,
"Salutation" 			varchar,
"FirstName" 			varchar,
"LastName" 				varchar,
"Email" 				varchar, --PRIMARY KEY (NOT NULL)
"Phone" 				varchar,
"Phone_2" 				varchar, --DUPLICATED
"Phone number" 			varchar, --DUPLICATED
"Address1" 				varchar,
"Address2" 				varchar,
"Street Address" 		varchar, 
"City" 					varchar,
"Zip Code" 				varchar,
"Zip/Postal Code" 		varchar,
"State/Province" 		varchar,
"email" 				varchar, --DUPLICAED
"Language" 				varchar,
"Country" 				varchar,
"Continent" 			varchar, 
-- Level II
"Unsubscribed" 			varchar,
"CreationDate" 			varchar, 
-- Level III
"Clinical Job Position" 				varchar,
"Clinical Job Position - Other" 		varchar,
"Clinical Work Focus" 					varchar,
"Conversion to SAB" 					varchar,
"Core" 									varchar,
"Customer List" 						varchar,
"Degree" 								varchar,
"Department" 							varchar,
"Employment Sector" 					varchar,
"Employment Sector - Other" 			varchar,
"Groups" 								varchar,
"Job Position" 							varchar,
"Job Position - Other" 					varchar,
"Laboratory Type" 						varchar,
"Organization" 							varchar,

----------------------------------------------------
-- SAB Notes and Tags
----------------------------------------------------
	"Admin Notes" 							varchar,
	"Account Notes" 						varchar,
	"Points" 								varchar,
	"15-102 IUPAC Scrape 6/22/15" 			varchar,
	"ExternalDataReference_2" 				varchar,
	"Link/Search Terms" 					varchar,
	"MissingInfo" 							varchar,
	"Needs AutoConverted" 					varchar,
	"Legacy_PRDB" 							varchar,
	"PRID" 									varchar,
	"Recruitment Note" 						varchar,
	"Recruitment Notes" 					varchar,
	"Recruitment Tag" 						varchar,
	"ReferredByName" 						varchar,
	"ReferredByPID" 						varchar,
	"RemoveTTs" 							varchar,
	"ExternalDataReference" 				varchar,
	"SAB Team" 								varchar,
	"Segment" 								varchar,
	"Survey Response" 						varchar,
	"UserType" 								varchar,
	"account_status" 						varchar,
	"contact_hash" 							varchar,
	"last_incidence_date" 					varchar,
	"pid" 									varchar,
	"temp-tag-15-170" 						varchar,
	"temp_project_flag" 					varchar,
	"temp_project_flag10" 					varchar,
	"temp_project_flag2" 					varchar,
	"temp_project_flag3" 					varchar,
	"temp_project_flag4" 					varchar,
	"temp_project_flag5" 					varchar,
	"temp_project_flag6" 					varchar,
	"temp_project_flag7" 					Varchar,
	"temp_project_flag8" 					varchar,
	"temp_project_flag9" 					varchar,
	"temp_projectflag10" 					Varchar,
	"temp_projectflag3" 					Varchar,
	"temp_projectflag4" 					varchar,
	"Temp_project_flag9"					varchar, 

----------------------------------------------------------------------------------------	
-- Specific Research Area details
----------------------------------------------------------------------------------------
		"Research Areas - Other" 												varchar,
		"Research/Work Focus" 													varchar,
		"Biopharmaceutical Drug Development Role - Assay Development" 			varchar,
		"Biopharmaceutical Drug Development Role - Downstream ProcessDev" 		varchar,
		"Biopharmaceutical Drug Development Role - Formulation Dev" 			varchar,
		"Biopharmaceutical Drug Development Role - Manufacturing" 				varchar,
		"Biopharmaceutical Drug Development Role - Other" 						varchar,
		"Biopharmaceutical Drug Development Role - Other (specify)" 			varchar,
		"Biopharmaceutical Drug Development Role - QA/QC" 						varchar,
		"Biopharmaceutical Drug Development Role - Upstream Process Dev" 		varchar,
		"CDD - Blood Bank" 														varchar,
		"CDD - Clinical Chemistry" 												varchar,
		"CDD - Cytopathology" 													varchar,
		"CDD - Diagnostic Imaging/Radiology" 									varchar,
		"CDD - Drug Testing" 													varchar,
		"CDD - Hematology and Coagulation" 										varchar,
		"CDD - Histopathology" 													varchar,
		"CDD - Immunology" 														varchar,
		"CDD - Microbiology" 													varchar,
		"CDD - Molecular Diagnostics and Genetics (pharmageno,prenatal)" 		varchar,
		"CDD - Other" 															varchar,
		"CDD - Other (please specify)" 											varchar,
		"CDD - Toxicology" 														varchar,
		"CDD - Urinalysis" 														varchar,
		"Canc - Bladder" 														varchar,
		"Canc - Brain" 															varchar,
		"Canc - Breast" 														varchar,
		"Canc - CNS, not brain" 												varchar,
		"Canc - Cervical" 														varchar,
		"Canc - Colon/rectal" 													varchar,
		"Canc - Esophagus" 														varchar,
		"Canc - Kidney" 														varchar,
		"Canc - Leukemia" 														varchar,
		"Canc - Liver" 															varchar,
		"Canc - Lung" 															varchar,
		"Canc - Lymphoma" 														varchar,
		"Canc - Melanoma" 														varchar,
		"Canc - Neuroblastoma" 													varchar,
		"Canc - Other" 															varchar,
		"Canc - Other (please specify)" 										varchar,
		"Canc - Ovarian" 														varchar,
		"Canc - Pancreas" 														varchar,
		"Canc - Prostate"														varchar,
		"Canc - Uterine" 														varchar,
		"Cert - Allergy and Immunology" 										varchar,
		"Cert - Anesthesiology" 												varchar,
		"Cert - Colon and Rectal Surgery" 										varchar,
		"Cert - Dermatology" 													varchar,
		"Cert - Emergency Medicine" 											varchar,
		"Cert - Family Medicine" 												varchar,
		"Cert - I do not have any board certifications" 						varchar,
		"Cert - Internal Medicine" 												varchar,
		"Cert - Medical Genetics" 												varchar,
		"Cert - Neurological Surgery" 											varchar,
		"Cert - Neurology" 														varchar,
		"Cert - Nuclear Medicine" 												varchar,
		"Cert - Obstetrics and Gynecology" 										varchar,
		"Cert - Ophthalmology" 													varchar,
		"Cert - Orthopaedic Surgery" 											varchar,
		"Cert - Other" 															varchar,
		"Cert - Other (please specify)" 										varchar,
		"Cert - Otolaryngology" 												varchar,
		"Cert - Pathology" 														varchar,
		"Cert - Pediatrics" 													varchar,
		"Cert - Physical Medicine and Rehabilitation" 							varchar,
		"Cert - Plastic Surgery" 												varchar,
		"Cert - Preventive Medicine" 											varchar,
		"Cert - Psychiatry" 													varchar,
		"Cert - Radiation Oncology" 											varchar,
		"Cert - Radiology" 														varchar,
		"Cert - Surgery" 														varchar,
		"Cert - Thoracic Surgery" 												varchar,
		"Cert - Urology" 														varchar,
		"Dis - Autoimmune disease" 												varchar,
		"Dis - Cancer" 															varchar,
		"Dis - Cardiovascular disease" 											varchar,
		"Dis - Diabetes" 														varchar,
		"Dis - Endocrine system disorders" 										varchar,
		"Dis - Infectious diseases" 											varchar,
		"Dis - Inflammation" 													varchar,
		"Dis - My work does not focus on any particular disease" 				varchar,
		"Dis - Neurological disorders" 											varchar,
		"Dis - Other" 															varchar,
		"Dis - Other (please specify)" 											varchar,
		"Food/Beverage Science - Flavor Chemistry/Sensory Science" 				varchar,
		"Food/Beverage Science - Food/Beverage Microbiology" 					varchar,
		"Food/Beverage Science - Other" 										varchar,
		"Food/Beverage Science - Other (please specify)" 						varchar,
		"Food/Beverage Science - Product R&D" 									varchar,
		"Food/Beverage Science - QA/QC" 										varchar,
		"Food/Beverage Science - Regulations/Compliance" 						varchar,
		"Food/Beverage Science - Research" 										varchar,
		"ForenSci - Biological/Medical Examination" 							varchar,
		"ForenSci - Physical Examinations" 										varchar,
		"Number of Beds" 														varchar,
		"RA - Agriculture" 														varchar,
		"RA - Analytical Chemistry" 											varchar,
		"RA - Anatomy" 															varchar,
		"RA - Biochemistry" 													varchar,
		"RA - Biodefense" 														varchar,
		"RA - Bioinformatics"													varchar,
		"RA - Biophysics" 														varchar,
		"RA - Bioprocessing" 													varchar,
		"RA - Biostatistics" 													varchar,
		"RA - Botany" 															varchar,
		"RA - Cancer/Oncology" 													varchar,
		"RA - Cell Biology" 													varchar,
		"RA - Clinical Diagnostics" 											varchar,
		"RA - Developmental Biology" 											varchar,
		"RA - Drug Discovery/R&D" 												varchar,
		"RA - Environmental Science" 											varchar,
		"RA - Epigenetics/Epigenomics" 											Varchar,
		"RA - Food Science" 													varchar,
		"RA - Forensics" 														varchar,
		"RA - Gene Therapy" 													varchar,
		"RA - Genetics/Genomics" 												varchar,
		"RA - Hematology" 														varchar,
		"RA - Histology" 														varchar,
		"RA - Immunology/Virology" 												varchar,
		"RA - Material Sciences/Polymer Chemistry" 								varchar,
		"RA - Medicinal Chemistry" 												varchar,
		"RA - Microbiology" 													varchar,
		"RA - Molecular Biology" 												varchar,
		"RA - Molecular Diagnostics" 											varchar,
		"RA - Nanotechnology" 													varchar,
		"RA - Neuroscience" 													varchar,
		"RA - Organic Chemistry" 												varchar,
		"RA - Other (please specify)" 											varchar,
		"RA - Pathology" 														varchar,
		"RA - Pharmacogenomics" 												varchar,
		"RA - Protein Sciences" 												varchar,
		"RA - Proteomics" 														varchar,
		"RA - Regenerative Medicine"											varchar,
		"RA - Stem Cell Biology" 												varchar,
		"RA - Synthetic Biology" 												varchar,
		"RA - Toxicology" 														varchar,
		"RA - Zoology" 															varchar,
		"SDI - Application Focus" 												varchar,
		"SDI - Application Focus Other" 										varchar,
		"SDI - Contact" 														varchar,
		"SDI - Food Survey"														varchar,
		"SDI - Industry" 														varchar,
		"SDI - Industry Other" 													varchar,
		"SDI - Lab Function"													varchar,
		"SDI - Lab Function Other" 												varchar,
		"SDI - Potential Duplicate" 											varchar,
		"SDI - Reference ID" 													varchar,
		"SDI - Source" 															varchar,
		"SDI Technologies - AA" 												varchar,
		"SDI Technologies - Arc/Spark" 											varchar,
		"SDI Technologies - Bioinformatics and Cheminformatics" 				varchar,
		"SDI Technologies - Biological Safety Cabinets" 						varchar,
		"SDI Technologies - Calorimetry" 										varchar,
		"SDI Technologies - Capillary electrophoresis" 							varchar,
		"SDI Technologies - Centrifugation" 									varchar,
		"SDI Technologies - Chemical Sensors" 									varchar,
		"SDI Technologies - Color Measurement" 									varchar,
		"SDI Technologies - Confocal Microscopy" 								varchar,
		"SDI Technologies - Continuous Flow Analysis and Discrete Analyz" 		varchar,
		"SDI Technologies - Dissolution Testing" 								varchar,
		"SDI Technologies - ELISA" 												varchar,
		"SDI Technologies - ELN" 												varchar,
		"SDI Technologies - Electrochemistry" 									varchar,
		"SDI Technologies - Electron Microscopes" 								varchar,
		"SDI Technologies - Electron Microscopy" 								varchar,
		"SDI Technologies - Electrophoresis" 									varchar,
		"SDI Technologies - Electrophysiology/Patch Clamp" 						varchar,
		"SDI Technologies - Ellipsometry" 										varchar,
		"SDI Technologies - Extraction" 										varchar,
		"SDI Technologies - FT-MS" 												varchar,
		"SDI Technologies - Fermentors/Bioreactors" 							varchar,
		"SDI Technologies - Flash Chromatography" 								varchar,
		"SDI Technologies - Flow Cytometry" 									varchar,
		"SDI Technologies - Fluorescence and Luminescence" 						varchar,
		"SDI Technologies - Fume Hoods" 										varchar,
		"SDI Technologies - GC" 												varchar,
		"SDI Technologies - GC-MS" 												varchar,
		"SDI Technologies - GC/MS" 												varchar,
		"SDI Technologies - Gas Chromatography" 								varchar,
		"SDI Technologies - HCS" 												varchar,
		"SDI Technologies - HPLC" 												varchar,
		"SDI Technologies - High Content Screening" 							varchar,
		"SDI Technologies - ICP" 												varchar,
		"SDI Technologies - ICP-MS" 											varchar,
		"SDI Technologies - In Vivo Animal Imaging" 							varchar,
		"SDI Technologies - Incubators" 										varchar,
		"SDI Technologies - Infrared (IR)" 										varchar,
		"SDI Technologies - Inorganic Elemental Analyzers" 						varchar,
		"SDI Technologies - Ion Chromatography" 								varchar,
		"SDI Technologies - LIMS" 												varchar,
		"SDI Technologies - Label-Free Detection/Biosensors" 					varchar,
		"SDI Technologies - Laboratory Balances" 								varchar,
		"SDI Technologies - Life Science Instrumentation" 						varchar,
		"SDI Technologies - Liquid Handling" 									varchar,
		"SDI Technologies - Low Pressure Liquid Chromatography" 				Varchar,
		"SDI Technologies - MALDI-TOF" 											varchar,
		"SDI Technologies - MS" 												varchar,
		"SDI Technologies - Magnetic Sector" 									varchar,
		"SDI Technologies - Materials Characterization" 						varchar,
		"SDI Technologies - Microarrays" 										varchar,
		"SDI Technologies - Microplate Readers" 								varchar,
		"SDI Technologies - Microwave Assisted Chemistry" 						varchar,
		"SDI Technologies - Molecular Spectroscopy" 							varchar,
		"SDI Technologies - NMR" 												varchar,
		"SDI Technologies - Near Infrared (NIR)" 								varchar,
		"SDI Technologies - Nucleic Acid Prep and Cell Separation" 				varchar,
		"SDI Technologies - Optical Microscopy" 								varchar,
		"SDI Technologies - Organic Elemental Analyzers" 						varchar,
		"SDI Technologies - PCR" 												varchar,
		"SDI Technologies - Particle Characterization" 							varchar,
		"SDI Technologies - Particle Size" 										varchar,
		"SDI Technologies - Petroleum Analyzers" 								varchar,
		"SDI Technologies - Physical Testing" 									varchar,
		"SDI Technologies - Polarimetry/Refractometry" 							varchar,
		"SDI Technologies - Portable Instruments" 								varchar,
		"SDI Technologies - Portable and In-Field MS"	 						varchar,
		"SDI Technologies - Process LC" 										varchar,
		"SDI Technologies - Radioactivity" 										varchar,
		"SDI Technologies - Raman" 												varchar,
		"SDI Technologies - Robotics" 											varchar,
		"SDI Technologies - SDMS" 												varchar,
		"SDI Technologies - Scanning Probe Microscopy" 							varchar,
		"SDI Technologies - Sequencers" 										varchar,
		"SDI Technologies - Single Quadrupole LC/MS" 							varchar,
		"SDI Technologies - Surface Analyzers" 									varchar,
		"SDI Technologies - Synthesizers" 										varchar,
		"SDI Technologies - TOC and Other Sum Parameters" 						varchar,
		"SDI Technologies - Tandem LC/MS" 										varchar,
		"SDI Technologies - Thermal Analysis" 									varchar,
		"SDI Technologies - Thin Layer Chromatography" 							varchar,
		"SDI Technologies - Time of Flight LC-MS" 								varchar,
		"SDI Technologies - Transfection" 										varchar,
		"SDI Technologies - UV-Vis" 											varchar,
		"SDI Technologies - Viscometry and Rheometry" 							varchar,
		"SDI Technologies - XRD" 												varchar,
		"SDI Technologies - XRF" 												varchar,
		"SDI Technologies - Xray" 												varchar,
		"SDI-TA Pre-existing" 													varchar,
		"SE-Meta Field Name" 													varchar,
		"Scientific Discipline - Agriculture" 									varchar,
		"Scientific Discipline - Chemistry" 									varchar,
		"Scientific Discipline - Environmental Sciences" 						varchar,
		"Scientific Discipline - Food/Beverage" 								varchar,
		"Scientific Discipline - Material Sciences" 							varchar,
		"Scientific Discipline - Nanotechnology" 								Varchar,
		"Scientific Discipline - Other" 										varchar,
		"Scientific Discipline - Other (please specify)" 						varchar,
		"Scientific Discipline - Physical Sciences" 							varchar,
		"TT - 2-D Gel Electrophoresis" 											varchar,
		"TT - Bacteria Culture" 												varchar,
		"TT - Calorimetry (including ITC, DSC)" 								varchar,
		"TT - Cell-Based Assays" 												varchar,
		"TT - Chromatography" 													varchar,
		"TT - Classical End-Point PCR" 											varchar,
		"TT - Cloning/Molecular Biology Techniques" 							varchar,
		"TT - Confocal Microscopy" 												varchar,
		"TT - DNA/RNA Microarrays" 												varchar,
		"TT - Enzyme-linked Immunosorbent Assay (ELISA)" 						varchar,
		"TT - Eukaryotic Cell/Tissue Culture" 									varchar,
		"TT - Flow Cytometry" 													varchar,
		"TT - Fluorescence Microscopy" 											varchar,
		"TT - Gene Expression Analysis" 										varchar,
		"TT - Genotyping" 														varchar,
		"TT - High Content Screening" 											varchar,
		"TT - High-Throughput Screening (HTS)" 									varchar,
		"TT - Immunohistochemistry" 											varchar,
		"TT - Label-Free Detection/Analysis (Biosensors, SPR, etc.)" 			varchar,
		"TT - Light Microscopy" 												varchar,
		"TT - Light Scattering (MALS, DLS)" 									varchar,
		"TT - Mass Spectrometry" 												varchar,
		"TT - Multiplex Bead Assays" 											varchar,
		"TT - Next Generation Sequencing" 										varchar,
		"TT - Other Tools or Techniques (please specify)" 						varchar,
		"TT - Protein Purification & Separation" 								varchar,
		"TT - Protein Structural Analysis (NMR, XRay Crystallography,CD)" 		varchar,
		"TT - RNAi (including siRNA, miRNA)" 									varchar,
		"TT - Real-Time PCR (including qPCR and RT-PCR)" 						varchar,
		"TT - Sanger DNA Sequencing" 											varchar,
		"TT - Single Nucleotide Polymorphism (genotyping, discovery)" 			varchar,
		"TT - Stem Cell Culture/Analysis" 										varchar,
		"TT - Western Blotting" 												varchar,
		"TT - Chromatography_2" 												varchar, --DUPLICAED
		"TT - Genotyping_2"														varchar, --DUPLICAED
		"TT - Immunohistochemistry_2" 											varchar, --DUPLICAED
		"ToM - Cell Based Therapies" 											varchar,
		"ToM - Monoclonal Antibodies (mAbs)" 									varchar,
		"ToM - Non-Antibody Protein Therapeutics" 								varchar,
		"ToM - Nucleic Acid Based Therapeutics" 								Varchar,
		"ToM - Other" 															varchar,
		"ToM - Other (please specify)" 											varchar,
		"ToM - Small Molecule Therapeutics" 									varchar,
		"ToM - Vaccines" 														varchar,
		"Tools/Techniques - Other" 												varchar
);