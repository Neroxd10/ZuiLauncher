.class public abstract Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;
.super Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/greenrobot/greendao/AbstractDao<",
        "TT;",
        "Ljava/lang/String;",
        ">;T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<",
        "TD;TT;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createRandomPk()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;->createRandomPk()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createRandomPk()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->random:Ljava/util/Random;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/greenrobot/greendao/test/DbTest;->random:Ljava/util/Random;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
