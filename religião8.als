module Model

open world_structure[World]
open ontological_properties[World]
open util/relation
open util/ternary
open util/boolean

sig Object {}

sig Property {}

sig DataType {}

abstract sig World {
	exists: some Object+Property,
	Agnosticismo: set exists:>Object,
	AgnosticismoAtesta: set exists:>Object,
	AgnosticismoTesta: set exists:>Object,
	Atesmo: set exists:>Object,
	Budismo: set exists:>Object,
	BudismoMahayana: set exists:>Object,
	BudismoTheravada: set exists:>Object,
	CatolicismoRomano: set exists:>Object,
	ConjuntodeCrenas: set exists:>Object,
	Crena: set exists:>Object,
	Crisitianismo: set exists:>Object,
	Deus: set exists:>Object,
	Doutrina: set exists:>Object,
	Forte: set exists:>Object,
	Fraco: set exists:>Object,
	igrejaOrtodoxa: set exists:>Object,
	Islamismo: set exists:>Object,
	Judaismo: set exists:>Object,
	LderReligioso: set exists:>Object,
	Livro: set exists:>Object,
	LivroReligioso: set exists:>Object,
	Pessoa: set exists:>Object,
	Profecia: set exists:>Object,
	Profeta: set exists:>Object,
	Protestantismo: set exists:>Object,
	PrticaReligisa: set exists:>Property,
	Religio: set exists:>Object,
	ReligioHenotesta: set exists:>Object,
	ReligioMonotesta: set exists:>Object,
	ReligioNoTesta: set exists:>Object,
	ReligioPolitesta: set exists:>Object,
	ReligioTesta: set exists:>Object,
	Sunitas: set exists:>Object,
	Taoismo: set exists:>Object,
	Templo: set exists:>Object,
	Xiitas: set exists:>Object,
	Xintosmo: set exists:>Object,
	acreditaem: set ReligioTesta one -> some Deus,
	localizadaem: set Templo one -> one PrticaReligisa,
	Material1: set LderReligioso -> PrticaReligisa -> Religio,
	Material3: set LivroReligioso -> PrticaReligisa -> Religio,
	Mediation1: set PrticaReligisa one -> one LivroReligioso,
	Mediation2: set PrticaReligisa one -> one LderReligioso,
	Mediation3: set PrticaReligisa one -> one Religio,
	MemberOf2: set ConjuntodeCrenas one -> some Crena,
	possui: set Doutrina one -> one LivroReligioso,
	proclama: set Profecia one -> one Profeta
}{
	all x: ConjuntodeCrenas | # (x.MemberOf2) >= 2
	exists:>Object in Livro+Profecia+Templo+ConjuntodeCrenas+Pessoa+Doutrina+Deus+Crena
	disj[Livro,Profecia,Templo,ConjuntodeCrenas,Pessoa,Doutrina,Deus,Crena]
	exists:>Property in PrticaReligisa
	disj[Doutrina,Deus+Livro+Profecia+Crena+Templo+Pessoa+ConjuntodeCrenas]
	disj[ConjuntodeCrenas,Deus+Livro+Profecia+Doutrina+Crena+Templo+Pessoa]
	disj[Pessoa,Deus+Livro+Profecia+Doutrina+Crena+Templo+ConjuntodeCrenas]
	disj[Livro,Deus+Profecia+Doutrina+Crena+Templo+Pessoa+ConjuntodeCrenas]
	disj[Crena,Deus+Livro+Profecia+Doutrina+Templo+Pessoa+ConjuntodeCrenas]
	disj[Templo,Deus+Livro+Profecia+Doutrina+Crena+Pessoa+ConjuntodeCrenas]
	disj[Profecia,Deus+Livro+Doutrina+Crena+Templo+Pessoa+ConjuntodeCrenas]
	disj[Deus,Livro+Profecia+Doutrina+Crena+Templo+Pessoa+ConjuntodeCrenas]
}

fact additionalFacts {
	continuous_existence[exists]
	elements_existence[Object+Property,exists]
}

fact weakSupplementationConstraint {
	all w: World | all x: w.Agnosticismo | # (x.(w.MemberOf2)) >= 2
}

fact weakSupplementationConstraint {
	all w: World | all x: w.Forte | # (x.(w.MemberOf2)) >= 2
}

fact weakSupplementationConstraint {
	all w: World | all x: w.AgnosticismoAtesta | # (x.(w.MemberOf2)) >= 2
}

fact weakSupplementationConstraint {
	all w: World | all x: w.Atesmo | # (x.(w.MemberOf2)) >= 2
}

fact weakSupplementationConstraint {
	all w: World | all x: w.AgnosticismoTesta | # (x.(w.MemberOf2)) >= 2
}

fact relatorConstraint {
	all w: World | all x: w.PrticaReligisa | # (x.(w.Mediation3)+x.(w.Mediation2)+x.(w.Mediation1)) >= 2
}

fact weakSupplementationConstraint {
	all w: World | all x: w.Fraco | # (x.(w.MemberOf2)) >= 2
}

fact weakSupplementationConstraint {
	all w: World | all x: w.ConjuntodeCrenas | # (x.(w.MemberOf2)) >= 2
}

fact acyclicMeronymic {
	all w: World | acyclic[w.MemberOf2,w.ConjuntodeCrenas]
}

fact rigidity {
	rigidity[Deus,Object,exists]
}

fact rigidity {
	rigidity[Agnosticismo,Object,exists]
}

fact rigidity {
	rigidity[Forte,Object,exists]
}

fact rigidity {
	rigidity[AgnosticismoAtesta,Object,exists]
}

fact rigidity {
	rigidity[Pessoa,Object,exists]
}

fact rigidity {
	rigidity[Atesmo,Object,exists]
}

fact rigidity {
	rigidity[AgnosticismoTesta,Object,exists]
}

fact rigidity {
	rigidity[Livro,Object,exists]
}

fact rigidity {
	rigidity[Profecia,Object,exists]
}

fact rigidity {
	rigidity[Doutrina,Object,exists]
}

fact rigidity {
	rigidity[PrticaReligisa,Property,exists]
}

fact rigidity {
	rigidity[Crena,Object,exists]
}

fact rigidity {
	rigidity[Profeta,Object,exists]
}

fact rigidity {
	rigidity[LivroReligioso,Object,exists]
}

fact rigidity {
	rigidity[Templo,Object,exists]
}

fact rigidity {
	rigidity[Fraco,Object,exists]
}

fact rigidity {
	rigidity[ConjuntodeCrenas,Object,exists]
}

fact generalization {
	Sunitas in Islamismo
}

fact generalization {
	BudismoMahayana in Budismo
}

fact generalization {
	BudismoTheravada in Budismo
}

fact generalization {
	Xintosmo in ReligioNoTesta
}

fact generalization {
	Xiitas in Islamismo
}

fact generalization {
	Forte in Atesmo
}

fact generalization {
	Profeta in Pessoa
}

fact generalization {
	Religio in ConjuntodeCrenas
}

fact generalization {
	Atesmo in ConjuntodeCrenas
}

fact generalization {
	ReligioMonotesta in ReligioTesta
}

fact generalization {
	AgnosticismoTesta in Agnosticismo
}

fact generalization {
	LderReligioso in Pessoa
}

fact generalization {
	LivroReligioso in Livro
}

fact generalization {
	igrejaOrtodoxa in Crisitianismo
}

fact generalization {
	Fraco in Atesmo
}

fact generalization {
	CatolicismoRomano in Crisitianismo
}

fact generalization {
	Agnosticismo in ConjuntodeCrenas
}

fact generalization {
	Crisitianismo in ReligioMonotesta
}

fact generalization {
	Protestantismo in Crisitianismo
}

fact generalization {
	AgnosticismoAtesta in Agnosticismo
}

fact generalization {
	ReligioNoTesta in Religio
}

fact generalization {
	Judaismo in ReligioMonotesta
}

fact generalization {
	Budismo in ReligioNoTesta
}

fact generalization {
	ReligioPolitesta in ReligioTesta
}

fact generalization {
	ReligioHenotesta in ReligioTesta
}

fact generalization {
	Islamismo in ReligioMonotesta
}

fact generalization {
	Taoismo in ReligioNoTesta
}

fact generalization {
	ReligioTesta in Religio
}

fun visible : World -> univ {
	exists
}

fact associationProperties {
	immutable_target[PrticaReligisa,Mediation1]
	immutable_target[PrticaReligisa,Mediation3]
	immutable_target[PrticaReligisa,Mediation2]
}

fact derivationRelationship {
	all w: World, x: w.LderReligioso, y: w.Religio, r: w.PrticaReligisa | x -> r -> y in w.Material1 iff x in r.(w.Mediation2) and y in r.(w.Mediation3)
}

fact derivationRelationship {
	all w: World, x: w.LivroReligioso, y: w.Religio, r: w.PrticaReligisa | x -> r -> y in w.Material3 iff x in r.(w.Mediation1) and y in r.(w.Mediation3)
}

fun livroreligioso1 [x: World.Religio,w: World] : set World.LivroReligioso {
	(select13[w.Material3]).x
}

fun livroreligioso1 [x: World.Religio] : set World.LivroReligioso {
	(select13[World.Material3]).x
}

fun deus [x: World.ReligioTesta,w: World] : set World.Deus {
	x.(w.acreditaem)
}

fun deus [x: World.ReligioTesta] : set World.Deus {
	x.(World.acreditaem)
}

fun profeta [x: World.Profecia,w: World] : set World.Profeta {
	x.(w.proclama)
}

fun profeta [x: World.Profecia] : set World.Profeta {
	x.(World.proclama)
}

fun prticareligisa2 [x: World.Religio,w: World] : set World.PrticaReligisa {
	(w.Mediation3).x
}

fun prticareligisa2 [x: World.Religio] : set World.PrticaReligisa {
	(World.Mediation3).x
}

fun conjuntodecrenas [x: World.Crena,w: World] : set World.ConjuntodeCrenas {
	(w.MemberOf2).x
}

fun conjuntodecrenas [x: World.Crena] : set World.ConjuntodeCrenas {
	(World.MemberOf2).x
}

fun religio2 [x: World.LivroReligioso,w: World] : set World.Religio {
	x.(select13[w.Material3])
}

fun religio2 [x: World.LivroReligioso] : set World.Religio {
	x.(select13[World.Material3])
}

fun profecia [x: World.Profeta,w: World] : set World.Profecia {
	(w.proclama).x
}

fun profecia [x: World.Profeta] : set World.Profecia {
	(World.proclama).x
}

fun prticareligisa [x: World.LivroReligioso,w: World] : set World.PrticaReligisa {
	(w.Mediation1).x
}

fun prticareligisa [x: World.LivroReligioso] : set World.PrticaReligisa {
	(World.Mediation1).x
}

fun religio1 [x: World.PrticaReligisa,w: World] : set World.Religio {
	x.(w.Mediation3)
}

fun religio1 [x: World.PrticaReligisa] : set World.Religio {
	x.(World.Mediation3)
}

fun livroreligioso2 [x: World.Doutrina,w: World] : set World.LivroReligioso {
	x.(w.possui)
}

fun livroreligioso2 [x: World.Doutrina] : set World.LivroReligioso {
	x.(World.possui)
}

fun crena [x: World.ConjuntodeCrenas,w: World] : set World.Crena {
	x.(w.MemberOf2)
}

fun crena [x: World.ConjuntodeCrenas] : set World.Crena {
	x.(World.MemberOf2)
}

fun lderreligioso2 [x: World.PrticaReligisa,w: World] : set World.LderReligioso {
	x.(w.Mediation2)
}

fun lderreligioso2 [x: World.PrticaReligisa] : set World.LderReligioso {
	x.(World.Mediation2)
}

fun prticareligisa4 [x: World.Templo,w: World] : set World.PrticaReligisa {
	x.(w.localizadaem)
}

fun prticareligisa4 [x: World.Templo] : set World.PrticaReligisa {
	x.(World.localizadaem)
}

fun religio [x: World.LderReligioso,w: World] : set World.Religio {
	x.(select13[w.Material1])
}

fun religio [x: World.LderReligioso] : set World.Religio {
	x.(select13[World.Material1])
}

fun religiotesta [x: World.Deus,w: World] : set World.ReligioTesta {
	(w.acreditaem).x
}

fun religiotesta [x: World.Deus] : set World.ReligioTesta {
	(World.acreditaem).x
}

fun templo [x: World.PrticaReligisa,w: World] : set World.Templo {
	(w.localizadaem).x
}

fun templo [x: World.PrticaReligisa] : set World.Templo {
	(World.localizadaem).x
}

fun livroreligioso [x: World.PrticaReligisa,w: World] : set World.LivroReligioso {
	x.(w.Mediation1)
}

fun livroreligioso [x: World.PrticaReligisa] : set World.LivroReligioso {
	x.(World.Mediation1)
}

fun prticareligisa6 [x: World.LderReligioso,w: World] : set World.PrticaReligisa {
	(w.Mediation2).x
}

fun prticareligisa6 [x: World.LderReligioso] : set World.PrticaReligisa {
	(World.Mediation2).x
}

fun lderreligioso [x: World.Religio,w: World] : set World.LderReligioso {
	(select13[w.Material1]).x
}

fun lderreligioso [x: World.Religio] : set World.LderReligioso {
	(select13[World.Material1]).x
}

fun doutrina [x: World.LivroReligioso,w: World] : set World.Doutrina {
	(w.possui).x
}

fun doutrina [x: World.LivroReligioso] : set World.Doutrina {
	(World.possui).x
}

run smallSingleWorld { } for 10 but 1 World, 7 int
run smallMultipleWorlds { } for 10 but 3 World, 7 int
run mediumSingleWorld { } for 15 but 1 World, 7 int
run mediumMultipleWorlds { } for 10 but 3 World, 7 int




