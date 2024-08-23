% Author: Ahmed Taha & Bassant Yasser
% Date: 5/27/2024

% These statements are used to tell Prolog compiler that the facts about those variables "disease","symptom","risk_factor" ... etc. are:
% (1) discontiguous which means they can be declared in separated places in code
% (2) dynamic which means they can be changed through external interface like Python in case you want to add or delete a new symptom.
% the numbers '/1','/2' refers to number of parameters related to each predicate

:- discontiguous disease/1.
:- dynamic disease/1.

:- discontiguous symptom/2.
:- dynamic symptom/2.

:- discontiguous risk_factor/2.
:- dynamic risk_factor/2.

:- discontiguous cause/2.
:- dynamic cause/2.

:- discontiguous affected_area/2.
:- dynamic affected_area/2.

:- discontiguous severity/2.
:- dynamic severity/2.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Facts about osteoporosis
disease(osteoporosis).
symptom(osteoporosis, 'Weakened and porous bones').
risk_factor(osteoporosis, age).
risk_factor(osteoporosis, gender).

% Facts about osteoarthritis
disease(osteoarthritis).
symptom(osteoarthritis, 'Joint pain and swelling').
symptom(osteoarthritis, 'Reduced joint mobility').
cause(osteoarthritis, 'Degeneration of joint cartilage').

% Facts about rheumatoid arthritis
disease(rheumatoid_arthritis).
symptom(rheumatoid_arthritis, 'Joint pain and inflammation').
symptom(rheumatoid_arthritis, 'Synovium inflammation').
cause(rheumatoid_arthritis, 'Autoimmune disorder').
affected_area(rheumatoid_arthritis, joints).

% Facts about Paget's disease of bone
disease(pagets_disease).
symptom(pagets_disease, 'Enlarged and weakened bones').
symptom(pagets_disease, 'Bone pain and deformities').
cause(pagets_disease, 'Abnormal bone remodeling').
affected_area(pagets_disease, bones).

% Facts about osteogenesis imperfecta
disease(osteogenesis_imperfecta).
symptom(osteogenesis_imperfecta, 'Fragile bones that break easily').
cause(osteogenesis_imperfecta, 'Genetic disorder').
cause(osteogenesis_imperfecta, 'Defect in collagen production').
affected_area(osteogenesis_imperfecta, bones).

% Facts about scoliosis
disease(scoliosis).
symptom(scoliosis, 'Abnormal curvature of the spine').
cause(scoliosis, 'Congenital or growth-related').
affected_area(scoliosis, spine).

% Facts about gout
disease(gout).
symptom(gout, 'Intense pain and inflammation, especially in the big toe').
cause(gout, 'Accumulation of urate crystals in joints').
affected_area(gout, joints).

% Facts about osteomyelitis
disease(osteomyelitis).
symptom(osteomyelitis, 'Bone pain, fever, and inflammation').
cause(osteomyelitis, 'Infection of the bone, usually by bacteria').
severity(osteomyelitis, acute).
severity(osteomyelitis, chronic).
