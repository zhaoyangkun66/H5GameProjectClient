.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$㺴;,
        Landroidx/appcompat/widget/Toolbar$ᆻ;,
        Landroidx/appcompat/widget/Toolbar$ḓ;,
        Landroidx/appcompat/widget/Toolbar$䆀;
    }
.end annotation


# instance fields
.field public Ԁ:L㚬/䂻/ᓭ/ಫ/ᆻ$உ;

.field public Խ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

.field public final ש:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public ڈ:Z

.field public ಋ:Landroid/content/res/ColorStateList;

.field public ಫ:Landroid/view/View;

.field public ർ:L㚬/䂻/ბ/ᇿ;

.field public ม:I

.field public ཇ:I

.field public ბ:I

.field public ᆻ:Landroid/graphics/drawable/Drawable;

.field public ᓭ:I

.field public final ᰘ:[I

.field public ᱹ:Landroidx/appcompat/widget/Toolbar$䆀;

.field public ḓ:Landroid/widget/ImageButton;

.field public ḙ:I

.field public ỷ:Z

.field public ἥ:I

.field public ᾦ:Landroid/content/res/ColorStateList;

.field public ℓ:Ljava/lang/CharSequence;

.field public ㄏ:Landroid/widget/ImageButton;

.field public ㄬ:Ljava/lang/CharSequence;

.field public 㖆:L㚬/䂻/ბ/㚬;

.field public 㖪:L㚬/䂻/ბ/Ԁ;

.field public 㚬:Landroid/widget/TextView;

.field public 㞘:I

.field public 㢏:I

.field public final 㥁:Landroidx/appcompat/widget/ActionMenuView$ḓ;

.field public 㧦:Landroid/content/Context;

.field public final 㨃:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public 㫏:Ljava/lang/CharSequence;

.field public 㭢:Landroidx/appcompat/widget/Toolbar$㺴;

.field public 㭲:I

.field public 㰫:Z

.field public 㲝:I

.field public 㲧:I

.field public 㹖:I

.field public 㺴:Landroid/widget/TextView;

.field public 䂻:Landroidx/appcompat/widget/ActionMenuView;

.field public final 䅚:Ljava/lang/Runnable;

.field public 䆀:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, L㚬/䂻/உ;->㭢:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x800013

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->㲧:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ᰘ:[I

    new-instance p1, Landroidx/appcompat/widget/Toolbar$உ;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/Toolbar$உ;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->㥁:Landroidx/appcompat/widget/ActionMenuView$ḓ;

    new-instance p1, Landroidx/appcompat/widget/Toolbar$䂻;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/Toolbar$䂻;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->䅚:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, L㚬/䂻/ಫ;->㜷:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object p1

    sget p2, L㚬/䂻/ಫ;->ۦ:I

    invoke-virtual {p1, p2, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->ἥ:I

    sget p2, L㚬/䂻/ಫ;->㢳:I

    invoke-virtual {p1, p2, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->ཇ:I

    sget p2, L㚬/䂻/ಫ;->ᅚ:I

    iget p3, p0, Landroidx/appcompat/widget/Toolbar;->㲧:I

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ᣝ;->㹖(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->㲧:I

    sget p2, L㚬/䂻/ಫ;->ፄ:I

    const/16 p3, 0x30

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ᣝ;->㹖(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->ᓭ:I

    sget p2, L㚬/䂻/ಫ;->䊛:I

    invoke-virtual {p1, p2, v1}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result p2

    sget p3, L㚬/䂻/ಫ;->ὲ:I

    invoke-virtual {p1, p3}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3, p2}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result p2

    :cond_0
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->ḙ:I

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->㭲:I

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->㞘:I

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->㲝:I

    sget p2, L㚬/䂻/ಫ;->ᩂ:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result p2

    if-ltz p2, :cond_1

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->㲝:I

    :cond_1
    sget p2, L㚬/䂻/ಫ;->ᴠ:I

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result p2

    if-ltz p2, :cond_2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->㞘:I

    :cond_2
    sget p2, L㚬/䂻/ಫ;->ṳ:I

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result p2

    if-ltz p2, :cond_3

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->㭲:I

    :cond_3
    sget p2, L㚬/䂻/ಫ;->ⱔ:I

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result p2

    if-ltz p2, :cond_4

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->ḙ:I

    :cond_4
    sget p2, L㚬/䂻/ಫ;->ᱨ:I

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ᣝ;->䆀(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->ბ:I

    sget p2, L㚬/䂻/ಫ;->㤌:I

    const/high16 p3, -0x80000000

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result p2

    sget v0, L㚬/䂻/ಫ;->ⶶ:I

    invoke-virtual {p1, v0, p3}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result v0

    sget v2, L㚬/䂻/ಫ;->㑮:I

    invoke-virtual {p1, v2, v1}, L㚬/䂻/ბ/ᣝ;->䆀(II)I

    move-result v2

    sget v3, L㚬/䂻/ಫ;->₲:I

    invoke-virtual {p1, v3, v1}, L㚬/䂻/ბ/ᣝ;->䆀(II)I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ℓ()V

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->㖪:L㚬/䂻/ბ/Ԁ;

    invoke-virtual {v4, v2, v3}, L㚬/䂻/ბ/Ԁ;->ḓ(II)V

    if-ne p2, p3, :cond_5

    if-eq v0, p3, :cond_6

    :cond_5
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->㖪:L㚬/䂻/ბ/Ԁ;

    invoke-virtual {v2, p2, v0}, L㚬/䂻/ბ/Ԁ;->ᆻ(II)V

    :cond_6
    sget p2, L㚬/䂻/ಫ;->Ↄ:I

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->㢏:I

    sget p2, L㚬/䂻/ಫ;->ᚭ:I

    invoke-virtual {p1, p2, p3}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->ม:I

    sget p2, L㚬/䂻/ಫ;->㳖:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->ᆻ:Landroid/graphics/drawable/Drawable;

    sget p2, L㚬/䂻/ಫ;->ᯉ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->ℓ:Ljava/lang/CharSequence;

    sget p2, L㚬/䂻/ಫ;->㐤:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    sget p2, L㚬/䂻/ಫ;->㮰:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->㧦:Landroid/content/Context;

    sget p2, L㚬/䂻/ಫ;->ደ:I

    invoke-virtual {p1, p2, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    sget p2, L㚬/䂻/ಫ;->ㅈ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    sget p2, L㚬/䂻/ಫ;->㰊:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    sget p2, L㚬/䂻/ಫ;->㞠:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    sget p2, L㚬/䂻/ಫ;->㪹:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    :cond_c
    sget p2, L㚬/䂻/ಫ;->ዱ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    :cond_d
    sget p2, L㚬/䂻/ಫ;->㿧:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    sget p2, L㚬/䂻/ಫ;->䂼:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-virtual {p1, p2, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->㲧(I)V

    :cond_f
    invoke-virtual {p1}, L㚬/䂻/ბ/ᣝ;->㢏()V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, L㚬/䂻/ᓭ/ᆻ;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, L㚬/䂻/ᓭ/ᆻ;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Landroidx/appcompat/widget/Toolbar$ḓ;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ἥ()Landroidx/appcompat/widget/Toolbar$ḓ;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->ཇ(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$ḓ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->ᓭ(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$ḓ;

    move-result-object p1

    return-object p1
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㖪:L㚬/䂻/ბ/Ԁ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/Ԁ;->உ()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ม:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㖪:L㚬/䂻/ბ/Ԁ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/Ԁ;->䂻()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㖪:L㚬/䂻/ბ/Ԁ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/Ԁ;->㚬()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㖪:L㚬/䂻/ბ/Ԁ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ბ/Ԁ;->㺴()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->㢏:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->Ԁ()L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->ม:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->㢏:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ಫ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOuterActionMenuPresenter()L㚬/䂻/ბ/㚬;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㖆:L㚬/䂻/ბ/㚬;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ಫ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㧦:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->㹖:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㫏:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSubtitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ㄬ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ḙ:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->㞘:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->㲝:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->㭲:I

    return v0
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWrapper()L㚬/䂻/ბ/ڈ;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ർ:L㚬/䂻/ბ/ᇿ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/ᇿ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, L㚬/䂻/ბ/ᇿ;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ർ:L㚬/䂻/ბ/ᇿ;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ർ:L㚬/䂻/ბ/ᇿ;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䅚:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->㰫:Z

    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->㰫:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->㰫:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->㰫:Z

    :cond_3
    return v4
.end method

.method public onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->ᰘ:[I

    aput v3, v11, v2

    aput v3, v11, v3

    invoke-static/range {p0 .. p0}, L㚬/ℓ/ἥ/㭲;->㲧(Landroid/view/View;)I

    move-result v12

    if-ltz v12, :cond_1

    sub-int v13, p5, p3

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ڈ(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v13, v6, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ᾦ(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    move v14, v10

    :goto_3
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ڈ(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ᾦ(Landroid/view/View;I[II)I

    move-result v13

    :cond_5
    :goto_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ᾦ(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ڈ(Landroid/view/View;I[II)I

    move-result v14

    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v16

    sub-int v2, v15, v13

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v11, v3

    sub-int v2, v10, v14

    sub-int v2, v16, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v17, 0x1

    aput v2, v11, v17

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v10, v10, v16

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ಫ:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->ಫ:Landroid/view/View;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ڈ(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v13, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ᾦ(Landroid/view/View;I[II)I

    move-result v2

    :cond_9
    :goto_6
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    invoke-virtual {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ڈ(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_7

    :cond_a
    invoke-virtual {v0, v13, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ᾦ(Landroid/view/View;I[II)I

    move-result v2

    :cond_b
    :goto_7
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v13

    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v14

    if-eqz v13, :cond_c

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p4, v7

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v7

    const/4 v7, 0x0

    add-int/2addr v3, v7

    goto :goto_8

    :cond_c
    move/from16 p4, v7

    const/4 v3, 0x0

    :goto_8
    if-eqz v14, :cond_d

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v4

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v15, v4

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v4

    add-int/2addr v3, v15

    goto :goto_9

    :cond_d
    move/from16 v16, v4

    :goto_9
    if-nez v13, :cond_f

    if-eqz v14, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v18, v6

    move/from16 p3, v12

    :goto_a
    const/4 v1, 0x0

    goto/16 :goto_17

    :cond_f
    :goto_b
    if-eqz v13, :cond_10

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    goto :goto_c

    :cond_10
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    :goto_c
    if-eqz v14, :cond_11

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    goto :goto_d

    :cond_11
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    :goto_d
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$ḓ;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar$ḓ;

    if-eqz v13, :cond_12

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-gtz v15, :cond_13

    :cond_12
    if-eqz v14, :cond_14

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-lez v15, :cond_14

    :cond_13
    const/16 v17, 0x1

    goto :goto_e

    :cond_14
    const/16 v17, 0x0

    :goto_e
    iget v15, v0, Landroidx/appcompat/widget/Toolbar;->㲧:I

    and-int/lit8 v15, v15, 0x70

    move/from16 v18, v6

    const/16 v6, 0x30

    if-eq v15, v6, :cond_18

    const/16 v6, 0x50

    if-eq v15, v6, :cond_17

    sub-int v6, v5, v8

    sub-int/2addr v6, v9

    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    iget v15, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p3, v12

    iget v12, v0, Landroidx/appcompat/widget/Toolbar;->㭲:I

    move/from16 p5, v2

    add-int v2, v15, v12

    if-ge v6, v2, :cond_15

    add-int v6, v15, v12

    goto :goto_f

    :cond_15
    sub-int/2addr v5, v9

    sub-int/2addr v5, v3

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->ḙ:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_16

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_16
    :goto_f
    add-int/2addr v8, v6

    goto :goto_10

    :cond_17
    move/from16 p5, v2

    move/from16 p3, v12

    sub-int/2addr v5, v9

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->ḙ:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v3

    goto :goto_10

    :cond_18
    move/from16 p5, v2

    move/from16 p3, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->㭲:I

    add-int v8, v2, v3

    :goto_10
    if-eqz v1, :cond_1d

    if-eqz v17, :cond_19

    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->㲝:I

    goto :goto_11

    :cond_19
    const/4 v1, 0x0

    :goto_11
    const/4 v2, 0x1

    aget v3, v11, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v10, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v13, :cond_1a

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v10, v2

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v8, v10, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->㞘:I

    sub-int/2addr v2, v4

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_12

    :cond_1a
    move v2, v10

    :goto_12
    if-eqz v14, :cond_1b

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v3

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v10, v3

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v8, v10, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->㞘:I

    sub-int v3, v10, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_13

    :cond_1b
    move v3, v10

    :goto_13
    if-eqz v17, :cond_1c

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    :cond_1c
    move/from16 v2, p5

    goto/16 :goto_a

    :cond_1d
    if-eqz v17, :cond_1e

    iget v7, v0, Landroidx/appcompat/widget/Toolbar;->㲝:I

    const/4 v1, 0x0

    goto :goto_14

    :cond_1e
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_14
    aget v2, v11, v1

    sub-int/2addr v7, v2

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v2, p5, v2

    neg-int v3, v7

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v1

    if-eqz v13, :cond_1f

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v8, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->㞘:I

    add-int/2addr v4, v6

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v5, v3

    goto :goto_15

    :cond_1f
    move v4, v2

    :goto_15
    if-eqz v14, :cond_20

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v5

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v8

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v8, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->㞘:I

    add-int/2addr v5, v6

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_16

    :cond_20
    move v5, v2

    :goto_16
    if-eqz v17, :cond_21

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_21
    :goto_17
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/widget/Toolbar;->䂻(Ljava/util/List;I)V

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v3, :cond_22

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move/from16 v12, p3

    invoke-virtual {v0, v4, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ᾦ(Landroid/view/View;I[II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_22
    move/from16 v12, p3

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/widget/Toolbar;->䂻(Ljava/util/List;I)V

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v3, :cond_23

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ڈ(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_23
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/widget/Toolbar;->䂻(Ljava/util/List;I)V

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v11}, Landroidx/appcompat/widget/Toolbar;->㖪(Ljava/util/List;[I)I

    move-result v3

    sub-int v4, v16, v18

    sub-int v4, v4, p4

    div-int/lit8 v4, v4, 0x2

    add-int v6, v18, v4

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v6, v4

    add-int/2addr v3, v6

    if-ge v6, v2, :cond_24

    goto :goto_1a

    :cond_24
    if-le v3, v10, :cond_25

    sub-int/2addr v3, v10

    sub-int v2, v6, v3

    goto :goto_1a

    :cond_25
    move v2, v6

    :goto_1a
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1b
    if-ge v1, v3, :cond_26

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->ᾦ(Landroid/view/View;I[II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_26
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->ש:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    iget-object v8, v7, Landroidx/appcompat/widget/Toolbar;->ᰘ:[I

    invoke-static/range {p0 .. p0}, L㚬/䂻/ბ/㽛;->䂻(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_0
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->ბ:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->ש(Landroid/view/View;IIIII)V

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->㭲(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->ḙ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    invoke-static {v9, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v12, v1

    move v13, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->ბ:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->ש(Landroid/view/View;IIIII)V

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->㭲(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->ḙ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v14, v9, v2

    sub-int/2addr v1, v0

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v10

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->ბ:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v14

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->ש(Landroid/view/View;IIIII)V

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->㭲(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->ḙ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredState()I

    move-result v1

    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v14, v2

    sub-int/2addr v1, v0

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v11

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->ಫ:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->ಫ:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v14

    move/from16 v4, p2

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->㰫(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v14, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->ಫ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->ಫ:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->ḙ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->ಫ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    :cond_4
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v14

    move/from16 v4, p2

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->㰫(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v14, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->ḙ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_8

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    if-nez v0, :cond_7

    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move v3, v14

    move/from16 v4, p2

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->㰫(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v14, v0

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->ḙ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v12, v0

    move v13, v1

    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->㭲:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->ḙ:I

    add-int v10, v0, v1

    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->㲝:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->㞘:I

    add-int v11, v0, v1

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    add-int v3, v14, v11

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v10

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->㰫(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->㭲(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->ḙ(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    invoke-static {v13, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    move v15, v1

    move v6, v13

    move v13, v0

    goto :goto_5

    :cond_9
    move v6, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_5
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    add-int v3, v14, v11

    add-int v5, v15, v10

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v10, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->㰫(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->ḙ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_6

    :cond_a
    move v10, v6

    :goto_6
    add-int/2addr v14, v13

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v14, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    move/from16 v3, p1

    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    invoke-static {v0, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->㭢()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    move v9, v0

    :goto_7
    invoke-virtual {v7, v1, v9}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$ᆻ;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/appcompat/widget/Toolbar$ᆻ;

    invoke-virtual {p1}, L㚬/ಫ/உ/உ;->ಫ()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->Ԁ()L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$ᆻ;->㺴:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_2
    iget-boolean p1, p1, Landroidx/appcompat/widget/Toolbar$ᆻ;->ḓ:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->㨃()V

    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ℓ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㖪:L㚬/䂻/ბ/Ԁ;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, L㚬/䂻/ბ/Ԁ;->䆀(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/Toolbar$ᆻ;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$ᆻ;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$㺴;->㚬:L㚬/䂻/ᓭ/ಫ/ㄏ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ಫ/ㄏ;->getItemId()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$ᆻ;->㺴:I

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ಋ()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$ᆻ;->ḓ:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->ڈ:Z

    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->ڈ:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->ڈ:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->ڈ:Z

    :cond_3
    return v3
.end method

.method public setCollapseContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ᆻ()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ᆻ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᆻ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->ỷ:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->ม:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->ม:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->㢏:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->㢏:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ㄏ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ㄬ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->㚬(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ㄬ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ㄏ()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->㹖()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->㹖()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ㄬ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->㚬(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ㄬ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->㹖()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$䆀;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ᱹ:Landroidx/appcompat/widget/Toolbar$䆀;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ಫ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->㹖:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->㹖:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->㧦:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㧦:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, L㚬/䂻/ბ/ㄬ;

    invoke-direct {v1, v0}, L㚬/䂻/ბ/ㄬ;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ཇ:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ᾦ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ㄬ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->㚬(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ㄬ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->㫏:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ᾦ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, L㚬/䂻/ბ/ㄬ;

    invoke-direct {v1, v0}, L㚬/䂻/ბ/ㄬ;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->ἥ:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ಋ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ㄬ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->㚬(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ㄬ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ㄬ:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->ḙ:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->㞘:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->㲝:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->㭲:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->ಋ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public Ԁ()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->䅚()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Խ(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final ש(Landroid/view/View;IIIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 p5, 0x40000000    # 2.0f

    if-eq p4, p5, :cond_1

    if-ltz p6, :cond_1

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    :cond_0
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final ڈ(Landroid/view/View;I[II)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->㲝(Landroid/view/View;I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v1, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    return p2
.end method

.method public உ()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public ಋ()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->ർ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ಫ()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->㧦()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->Ԁ()L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, L㚬/䂻/ᓭ/ಫ/ᆻ;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/Toolbar$㺴;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$㺴;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->㧦:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㚬(L㚬/䂻/ᓭ/ಫ/ἥ;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public ർ(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->ཇ:I

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㺴:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public ม()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->ᱹ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ཇ(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$ḓ;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$ḓ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final ბ(I)I
    .locals 4

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, L㚬/ℓ/ἥ/㺴;->䂻(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x5

    :cond_0
    return v2

    :cond_1
    return p1
.end method

.method public ᆻ()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/ἥ;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, L㚬/䂻/உ;->㖆:I

    invoke-direct {v0, v1, v2, v3}, L㚬/䂻/ბ/ἥ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ᆻ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ℓ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ἥ()Landroidx/appcompat/widget/Toolbar$ḓ;

    move-result-object v0

    const v1, 0x800003

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->ᓭ:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, L㚬/䂻/㧦/உ$உ;->உ:I

    const/4 v1, 0x2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ㄏ:Landroid/widget/ImageButton;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$㚬;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$㚬;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public ᓭ(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$ḓ;
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$ḓ;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    check-cast p1, Landroidx/appcompat/widget/Toolbar$ḓ;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$ḓ;-><init>(Landroidx/appcompat/widget/Toolbar$ḓ;)V

    return-object v0

    :cond_0
    instance-of v0, p1, L㚬/䂻/㧦/உ$உ;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    check-cast p1, L㚬/䂻/㧦/உ$உ;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$ḓ;-><init>(L㚬/䂻/㧦/உ$உ;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$ḓ;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$ḓ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public ᰘ()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v2, v2, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ᱹ(II)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ℓ()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㖪:L㚬/䂻/ბ/Ԁ;

    invoke-virtual {v0, p1, p2}, L㚬/䂻/ბ/Ԁ;->ᆻ(II)V

    return-void
.end method

.method public ḓ()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$㺴;->㚬:L㚬/䂻/ᓭ/ಫ/ㄏ;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ㄏ;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public final ḙ(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    return v0
.end method

.method public ἥ()Landroidx/appcompat/widget/Toolbar$ḓ;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar$ḓ;-><init>(II)V

    return-object v0
.end method

.method public final ᾦ(Landroid/view/View;I[II)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->㲝(Landroid/view/View;I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int v1, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p4, p1

    add-int/2addr p2, p4

    return p2
.end method

.method public final ℓ()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㖪:L㚬/䂻/ბ/Ԁ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/Ԁ;

    invoke-direct {v0}, L㚬/䂻/ბ/Ԁ;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㖪:L㚬/䂻/ბ/Ԁ;

    :cond_0
    return-void
.end method

.method public final ㄏ()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䆀:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public final ㄬ(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public 㖆(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->ἥ:I

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㚬:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final 㖪(Ljava/util/List;[I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget p2, p2, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, p2

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v7, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr p2, v5

    add-int/2addr p2, v6

    add-int/2addr v4, p2

    add-int/lit8 v3, v3, 0x1

    move p2, v1

    move v1, v7

    goto :goto_0

    :cond_0
    return v4
.end method

.method public final 㚬(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ἥ()Landroidx/appcompat/widget/Toolbar$ḓ;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->ᓭ(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$ḓ;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->ಫ:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->㨃:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public final 㞘(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    iget p1, p0, Landroidx/appcompat/widget/Toolbar;->㲧:I

    and-int/lit8 p1, p1, 0x70

    :cond_0
    return p1
.end method

.method public 㢏()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$㺴;->㚬:L㚬/䂻/ᓭ/ಫ/ㄏ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㥁(L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ბ/㚬;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->㧦()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->Ԁ()L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㖆:L㚬/䂻/ბ/㚬;

    invoke-virtual {v0, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ỷ(L㚬/䂻/ᓭ/ಫ/ἥ;)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    invoke-virtual {v0, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ỷ(L㚬/䂻/ᓭ/ಫ/ἥ;)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/appcompat/widget/Toolbar$㺴;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$㺴;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, L㚬/䂻/ბ/㚬;->㨃(Z)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㧦:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㚬(L㚬/䂻/ᓭ/ಫ/ἥ;Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㧦:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㚬(L㚬/䂻/ᓭ/ಫ/ἥ;Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->㧦:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, L㚬/䂻/ბ/㚬;->㺴(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->㧦:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/Toolbar$㺴;->㺴(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;)V

    invoke-virtual {p2, v0}, L㚬/䂻/ბ/㚬;->ಫ(Z)V

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->㭢:Landroidx/appcompat/widget/Toolbar$㺴;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar$㺴;->ಫ(Z)V

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->㹖:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(L㚬/䂻/ბ/㚬;)V

    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->㖆:L㚬/䂻/ბ/㚬;

    return-void
.end method

.method public final 㧦()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->㹖:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->㥁:Landroidx/appcompat/widget/ActionMenuView$ḓ;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$ḓ;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->Խ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->Ԁ:L㚬/䂻/ᓭ/ಫ/ᆻ$உ;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->ỷ(L㚬/䂻/ᓭ/ಫ/ἥ$உ;L㚬/䂻/ᓭ/ಫ/ᆻ$உ;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ἥ()Landroidx/appcompat/widget/Toolbar$ḓ;

    move-result-object v0

    const v1, 0x800005

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->ᓭ:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, L㚬/䂻/㧦/உ$உ;->உ:I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->㚬(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final 㨃()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䅚:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䅚:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public 㫏()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->㥁()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final 㭢()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->ỷ:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final 㭲(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, L㚬/ℓ/ἥ/ᆻ;->䂻(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    invoke-static {p1}, L㚬/ℓ/ἥ/ᆻ;->உ(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final 㰫(Landroid/view/View;IIII[I)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p6

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p6

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v5

    return p1
.end method

.method public final 㲝(Landroid/view/View;I)I
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget v2, v0, L㚬/䂻/㧦/உ$உ;->உ:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->㞘(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge v3, p1, :cond_2

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_2
    :goto_1
    add-int/2addr p2, v4

    return p2

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method public 㲧(I)V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final 㹖()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/ἥ;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, L㚬/䂻/உ;->㖆:I

    invoke-direct {v0, v1, v2, v3}, L㚬/䂻/ბ/ἥ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ἥ()Landroidx/appcompat/widget/Toolbar$ḓ;

    move-result-object v0

    const v1, 0x800003

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->ᓭ:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, L㚬/䂻/㧦/உ$உ;->உ:I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->ḓ:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public 㺴()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->㖆()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final 䂻(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v4

    invoke-static {p2, v4}, L㚬/ℓ/ἥ/㺴;->䂻(II)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v2, v1, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, L㚬/䂻/㧦/உ$உ;->உ:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->ბ(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$ḓ;

    iget v4, v2, Landroidx/appcompat/widget/Toolbar$ḓ;->䂻:I

    if-nez v4, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->Խ(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, L㚬/䂻/㧦/உ$உ;->உ:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->ბ(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public 䆀()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->ᾦ()V

    :cond_0
    return-void
.end method
