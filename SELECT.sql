SELECT m.email, d.nome AS disciplina
FROM monitor AS m
JOIN relacaomonitoriamonitor AS rmm ON m.idmonitor = rmm.idmonitor
JOIN monitoria AS mo ON rmm.idmonitoria = mo.idmonitoria
JOIN disciplina AS d ON mo.iddisc = d.iddisc;

SELECT p.nome AS professor, mat.nome AS material
FROM professor AS p
JOIN relacaoprofessordisc AS rpd ON p.idprof = rpd.idprof
JOIN disciplina AS d ON rpd.iddisc = d.iddisc
JOIN relacaomonitoriamaterial AS rmm ON d.iddisc = rmm.idmonitoria
JOIN material AS mat ON rmm.idmaterial = mat.idmaterial;

SELECT DISTINCT m.email
FROM monitor AS m
JOIN relacaomonitoriamonitor AS rmm ON m.idmonitor = rmm.idmonitor
JOIN monitoria AS mo ON rmm.idmonitoria = mo.idmonitoria
JOIN relacaomonitoralunosessao AS rmas ON mo.idmonitoria = rmas.idmonitoria
JOIN remoto AS r ON rmas.idsessaor = r.idsessaor;

SELECT m.email, p.nome AS professor
FROM monitor AS m
JOIN relacaomonitoriamonitor AS rmm ON m.idmonitor = rmm.idmonitor
JOIN monitoria AS mo ON rmm.idmonitoria = mo.idmonitoria
JOIN professor AS p ON mo.idprof = p.idprof;

SELECT p.nome AS professor, d.nome AS disciplina
FROM professor AS p
JOIN relacaoprofessordisc AS rpd ON p.idprof = rpd.idprof
JOIN disciplina AS d ON rpd.iddisc = d.iddisc;

SELECT
    m.idmonitor,
    m.tipo,
    m.email,
    mo.idmonitoria,
    r.idsessaor,
    r.link
FROM monitor AS m
LEFT JOIN relacaomonitoriamonitor AS rm ON m.idmonitor = rm.idmonitor
LEFT JOIN monitoria AS mo ON rm.idmonitoria = mo.idmonitoria
LEFT JOIN relacaomonitoralunosessao AS rmas ON mo.idmonitoria = rmas.idmonitoria
LEFT JOIN remoto AS r ON rmas.idsessaor = r.idsessaor;

SELECT
    m.idmonitor,
    m.tipo,
    m.email,
    mo.idmonitoria,
    p.idsessao,
    s.numero AS numero_sala,
    s.idsala
FROM monitor AS m
LEFT JOIN relacaomonitoriamonitor AS rm ON m.idmonitor = rm.idmonitor
LEFT JOIN monitoria AS mo ON rm.idmonitoria = mo.idmonitoria
LEFT JOIN relacaomonitoralunosessao AS rmas ON mo.idmonitoria = rmas.idmonitoria
LEFT JOIN presencial AS p ON rmas.idsessao = p.idsessao
LEFT JOIN sala AS s ON p.idsessao = s.idsessao;

SELECT
    d.nome AS disciplina,
    mat.nome AS material
FROM disciplina AS d
LEFT JOIN relacaomonitoriamaterial AS rmm ON d.iddisc = rmm.idmonitoria
LEFT JOIN material AS mat ON rmm.idmaterial = mat.idmaterial
ORDER BY d.nome, mat.nome;

SELECT
    m.idmonitor,
    m.tipo,
    m.email,
    COUNT(r.idsessaor) AS total_monitorias_online
FROM monitor AS m
LEFT JOIN relacaomonitoriamonitor AS rmm ON m.idmonitor = rmm.idmonitor
LEFT JOIN monitoria AS mo ON rmm.idmonitoria = mo.idmonitoria
LEFT JOIN relacaomonitoralunosessao AS rmas ON mo.idmonitoria = rmas.idmonitoria
LEFT JOIN remoto AS r ON rmas.idsessaor = r.idsessaor
GROUP BY m.idmonitor, m.tipo, m.email
ORDER BY total_monitorias_online DESC;

SELECT
    m.idmonitor,
    m.tipo,
    m.email,
    COUNT(*) AS total_monitorias_depois_14
FROM monitor AS m
LEFT JOIN relacaomonitoriamonitor AS rmm ON m.idmonitor = rmm.idmonitor
LEFT JOIN monitoria AS mo ON rmm.idmonitoria = mo.idmonitoria
LEFT JOIN relacaomonitoralunosessao AS rmas ON mo.idmonitoria = rmas.idmonitoria
WHERE rmas.horario > '14:00:00'
GROUP BY m.idmonitor, m.tipo, m.email
HAVING COUNT(*) > 0
ORDER BY total_monitorias_depois_14 DESC;


SELECT
    (SELECT nome FROM professor WHERE professor.idprof = rpd.idprof) AS nome_professor,
    COUNT(rpd.iddisc) AS total_disciplinas
FROM relacaoprofessordisc AS rpd
GROUP BY rpd.idprof
HAVING COUNT(rpd.iddisc) > 0
ORDER BY total_disciplinas DESC;

SELECT
    COUNT(*) AS total_monitores
FROM monitoria AS mo
WHERE mo.iddisc = (
    SELECT iddisc
    FROM disciplina
    WHERE nome = 'Algoritmos e Estruturas de Dados'
);
