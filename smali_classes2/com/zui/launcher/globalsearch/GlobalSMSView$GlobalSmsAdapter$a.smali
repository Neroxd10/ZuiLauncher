.class Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

.field final synthetic c:Landroid/text/SpannableStringBuilder;

.field final synthetic d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;Ljava/lang/String;Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->b:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->c:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->b(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/GlobalSearchView;->getPreKeyWordString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->b:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

    iget-object v3, v3, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    iget-object v6, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    if-lez v5, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    invoke-static {v6, v7}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->d(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;Z)Z

    iget-object v6, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v6}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->c(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index --> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " count --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GlobalSearch"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v4}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->c(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/GlobalSearchView$LOG;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v3}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->c(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v3}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->e(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)I

    move-result v3

    if-lt v2, v3, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v3}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->e(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)I

    move-result v3

    sub-int v3, v2, v3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    sub-int v6, v4, v6

    iget-object v7, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v7}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->e(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)I

    move-result v7

    if-lt v6, v7, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    add-int/2addr v2, v6

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_4
    sub-int v6, v2, v3

    new-array v7, v6, [C

    iget-object v8, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v3, v2, v7, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    move v3, v1

    :goto_5
    if-ge v3, v6, :cond_5

    iget-object v8, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v8}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-char v9, v7, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->a:Ljava/lang/String;

    sub-int v5, v4, v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_7

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_7

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->f(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->f(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->f(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->b(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEllipsis = true stringBuilder -- > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->d:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    invoke-static {v2}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/GlobalSearchView$LOG;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->b:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEllipsis = false stringBuilder -- > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/GlobalSearchView$LOG;->e(Ljava/lang/String;)V

    :goto_7
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->b:Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;

    iget-object v0, v0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$c;->c:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter$a;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method
