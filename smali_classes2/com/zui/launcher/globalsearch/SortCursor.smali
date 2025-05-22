.class public Lcom/zui/launcher/globalsearch/SortCursor;
.super Landroid/database/CursorWrapper;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/CursorWrapper;",
        "Ljava/util/Comparator<",
        "Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/database/Cursor;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;",
            ">;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/SortCursor;->b:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/globalsearch/SortCursor;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->c:I

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/SortCursor;->a:Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/SortCursor;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/globalsearch/SortCursor;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;-><init>()V

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/zui/launcher/globalsearch/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;->key:I

    iput v0, v1, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;->order:I

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/SortCursor;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/SortCursor;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/SortCursor;->b:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;)I
    .locals 2

    iget p0, p1, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;->key:I

    iget v0, p2, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;->key:I

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget p0, p1, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;->key:I

    iget p1, p2, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;->key:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;

    check-cast p2, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/SortCursor;->compare(Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;)I

    move-result p0

    return p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->c:I

    return p0
.end method

.method public move(I)Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/globalsearch/SortCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/globalsearch/SortCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public moveToLast()Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/globalsearch/SortCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public moveToNext()Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/globalsearch/SortCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public moveToPosition(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iput p1, p0, Lcom/zui/launcher/globalsearch/SortCursor;->c:I

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;

    iget p1, p1, Lcom/zui/launcher/globalsearch/SortCursor$SortEntry;->order:I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->a:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p0

    return p0

    :cond_1
    if-gez p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->c:I

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->c:I

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/globalsearch/SortCursor;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/globalsearch/SortCursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method
