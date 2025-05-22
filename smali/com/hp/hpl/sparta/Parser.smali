.class public Lcom/hp/hpl/sparta/Parser;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/hp/hpl/sparta/Document;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/hp/hpl/sparta/Parser;->parse([C)Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/hp/hpl/sparta/Document;
    .locals 7

    new-instance v6, Lcom/hp/hpl/sparta/a;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/a;-><init>()V

    new-instance v0, Lcom/hp/hpl/sparta/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    invoke-virtual {v6}, Lcom/hp/hpl/sparta/a;->a()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;)Lcom/hp/hpl/sparta/Document;
    .locals 7

    new-instance v6, Lcom/hp/hpl/sparta/a;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/a;-><init>()V

    new-instance v0, Lcom/hp/hpl/sparta/f;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    invoke-virtual {v6}, Lcom/hp/hpl/sparta/a;->a()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;)Lcom/hp/hpl/sparta/Document;
    .locals 7

    new-instance v6, Lcom/hp/hpl/sparta/a;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/a;-><init>()V

    new-instance v0, Lcom/hp/hpl/sparta/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    invoke-virtual {v6}, Lcom/hp/hpl/sparta/a;->a()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;)Lcom/hp/hpl/sparta/Document;
    .locals 7

    new-instance v6, Lcom/hp/hpl/sparta/a;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/a;-><init>()V

    new-instance v0, Lcom/hp/hpl/sparta/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/g;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    invoke-virtual {v6}, Lcom/hp/hpl/sparta/a;->a()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;)Lcom/hp/hpl/sparta/Document;
    .locals 7

    new-instance v6, Lcom/hp/hpl/sparta/a;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/a;-><init>()V

    new-instance v0, Lcom/hp/hpl/sparta/g;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/g;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    invoke-virtual {v6}, Lcom/hp/hpl/sparta/a;->a()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;)Lcom/hp/hpl/sparta/Document;
    .locals 7

    new-instance v6, Lcom/hp/hpl/sparta/a;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/a;-><init>()V

    new-instance v0, Lcom/hp/hpl/sparta/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/g;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    invoke-virtual {v6}, Lcom/hp/hpl/sparta/a;->a()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse([B)Lcom/hp/hpl/sparta/Document;
    .locals 7

    new-instance v6, Lcom/hp/hpl/sparta/a;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/a;-><init>()V

    new-instance v0, Lcom/hp/hpl/sparta/f;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "file:anonymous-string"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    invoke-virtual {v6}, Lcom/hp/hpl/sparta/a;->a()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse([C)Lcom/hp/hpl/sparta/Document;
    .locals 7

    new-instance v6, Lcom/hp/hpl/sparta/a;

    invoke-direct {v6}, Lcom/hp/hpl/sparta/a;-><init>()V

    new-instance v0, Lcom/hp/hpl/sparta/g;

    const-string v1, "file:anonymous-string"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/g;-><init>(Ljava/lang/String;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    invoke-virtual {v6}, Lcom/hp/hpl/sparta/a;->a()Lcom/hp/hpl/sparta/Document;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hp/hpl/sparta/Parser;->parse([CLcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6

    new-instance v0, Lcom/hp/hpl/sparta/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6

    new-instance v0, Lcom/hp/hpl/sparta/f;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6

    new-instance v0, Lcom/hp/hpl/sparta/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6

    new-instance v0, Lcom/hp/hpl/sparta/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/g;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6

    new-instance v0, Lcom/hp/hpl/sparta/g;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/g;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6

    new-instance v0, Lcom/hp/hpl/sparta/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/g;-><init>(Ljava/lang/String;Ljava/io/Reader;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse([BLcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6

    new-instance v0, Lcom/hp/hpl/sparta/f;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "file:anonymous-string"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method

.method public static parse([CLcom/hp/hpl/sparta/ParseHandler;)V
    .locals 6

    new-instance v0, Lcom/hp/hpl/sparta/g;

    const-string v1, "file:anonymous-string"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/hp/hpl/sparta/g;-><init>(Ljava/lang/String;[CLcom/hp/hpl/sparta/ParseLog;Ljava/lang/String;Lcom/hp/hpl/sparta/ParseHandler;)V

    return-void
.end method
