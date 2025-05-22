.class public interface abstract Lcom/zui/fss/api/IFssApi$ListFilesCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/fss/api/IFssApi$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/fss/api/IFssApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ListFilesCallback"
.end annotation


# virtual methods
.method public abstract onFileListGot(Ljava/util/ArrayList;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/fss/api/FileMeta;",
            ">;II)V"
        }
    .end annotation
.end method
