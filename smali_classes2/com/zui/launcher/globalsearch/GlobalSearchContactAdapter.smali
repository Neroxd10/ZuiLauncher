.class public Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;,
        Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final MORE_PHONE_STATE:I = 0x6f

.field public static final NORMAL_STATE:I = 0x6e

.field private static f:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zui/launcher/GlobalSearchView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/ContactInfoNew;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/ContactInfoNew;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->d:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    sput-boolean p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;)Lcom/zui/launcher/GlobalSearchView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->b:Lcom/zui/launcher/GlobalSearchView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->f:Z

    return v0
.end method

.method private d(I)I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/model/ContactInfoNew;

    const/16 p1, 0x6e

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/model/ContactInfoNew;->phoneList:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_2

    const/16 p0, 0x6f

    return p0

    :cond_2
    return p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/Utilities$SmsContact;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/Utilities$SmsContact;

    iget-object v2, v1, Lcom/zui/launcher/Utilities$SmsContact;->address:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/zui/launcher/Utilities$SmsContact;->name:Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->getPersonNameByAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static getPersonNameByAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "display_name"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p1

    :cond_1
    if-eqz p0, :cond_3

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1

    :catch_0
    move-object p0, v1

    :catch_1
    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method


# virtual methods
.method public addData()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->e:I

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public synthetic f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->queryContactPersonSms(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->d(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;I)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_15

    if-gez p2, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/ContactInfoNew;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->d(I)I

    move-result v1

    iget-object v2, v0, Lcom/zui/launcher/model/ContactInfoNew;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/zui/launcher/model/ContactInfoNew;->phoneList:Ljava/util/List;

    iget-object v4, v0, Lcom/zui/launcher/model/BaseInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0x6e

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-ne v1, v5, :cond_d

    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v8

    goto :goto_0

    :cond_3
    move v5, v9

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->b:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    const/4 v1, 0x0

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/PhoneInfo;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    move v8, v9

    :goto_3
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v1, v2, Lcom/zui/launcher/model/PhoneInfo;->phone:Ljava/lang/String;

    iget v2, v2, Lcom/zui/launcher/model/PhoneInfo;->phoneType:I

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->b:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v1}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    iget-object v4, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    :goto_4
    iget-object v3, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->handlePhoneType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->h:Landroid/widget/ImageView;

    new-instance v3, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$a;

    invoke-direct {v3, p0, v1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$a;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->i:Landroid/widget/ImageView;

    new-instance v3, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$b;

    invoke-direct {v3, p0, v1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$b;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->a:Landroid/widget/ImageView;

    new-instance v2, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$c;

    invoke-direct {v2, p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$c;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->j:Landroid/view/View;

    if-nez p2, :cond_c

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    :cond_c
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    :cond_d
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_15

    if-eqz v2, :cond_11

    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_6

    :cond_e
    move v8, v9

    :goto_6
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->b:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v2}, Lcom/zui/launcher/GlobalSearchView;->highLightText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_7

    :cond_f
    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_10
    :goto_7
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_8
    if-eqz v4, :cond_12

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/zui/launcher/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->getCircleAvatar(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->g:Landroidx/recyclerview/widget/RecyclerView;

    sget-boolean v2, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->f:Z

    if-eqz v2, :cond_13

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_9

    :cond_13
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_9
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;

    iget-object v2, v0, Lcom/zui/launcher/model/ContactInfoNew;->phoneList:Ljava/util/List;

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-direct {v1, v2, v3, v4}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/zui/launcher/GlobalSearchView;)V

    new-instance v2, Lcom/zui/launcher/globalsearch/m;

    invoke-direct {v2, p0}, Lcom/zui/launcher/globalsearch/m;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->e(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$ContactAppItemClickListener;)V

    iget-object v2, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;->k:Landroid/view/View;

    if-nez p2, :cond_14

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_14
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$d;-><init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    :goto_b
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x6e

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d00c0

    :goto_0
    invoke-virtual {p1, p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/16 v1, 0x6f

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d00c1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$e;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public queryContactPersonSms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, " "

    const-string v3, ""

    move-object/from16 v4, p2

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/zui/launcher/Constants;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v7, v10

    const-string v6, "address=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "address"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "thread_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "person"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-wide/16 v12, -0x1

    move v14, v9

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v23, v5

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v24, v6

    invoke-static/range {p1 .. p1}, Lcom/zui/launcher/Utilities;->getPersonNames(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    cmp-long v12, v12, v9

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x1

    if-ne v5, v12, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {v2, v15, v6}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    :cond_3
    :goto_1
    move v5, v12

    move-wide v12, v9

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    const-wide/16 v16, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.messaging.datamodel.MessagingContentProvider/conversations/thread/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v5, "  readFrom MessagingContentProvider failed: "

    invoke-static {v5, v0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-eqz v6, :cond_6

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move-wide/from16 v21, v16

    if-eqz v14, :cond_7

    iget-object v0, v1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->b:Lcom/zui/launcher/GlobalSearchView;

    move-object v5, v15

    move-object v15, v0

    move-object/from16 v16, v5

    move-wide/from16 v17, v9

    invoke-virtual/range {v15 .. v22}, Lcom/zui/launcher/GlobalSearchView;->sendSmsInfo(Ljava/lang/String;JJJ)V

    const/4 v14, 0x0

    :cond_7
    move/from16 v5, v23

    move/from16 v6, v24

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void

    :cond_a
    :goto_4
    const-string v2, "ydl"

    const-string v4, "cursor == null || 0 "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/GlobalSearchView;->skipSms(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void
.end method

.method public recyclerContactAdapter()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->b:Lcom/zui/launcher/GlobalSearchView;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeData()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->e:I

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public setContactData(Ljava/util/List;Ljava/util/List;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/ContactInfoNew;",
            ">;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/ContactInfoNew;",
            ">;",
            "Lcom/zui/launcher/GlobalSearchView;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->b:Lcom/zui/launcher/GlobalSearchView;

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter;->d:Ljava/util/List;

    return-void
.end method
