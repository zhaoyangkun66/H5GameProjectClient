.class public L㚬/䂻/ბ/ᇿ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ბ/ڈ;


# instance fields
.field public உ:Landroidx/appcompat/widget/Toolbar;

.field public ಫ:Ljava/lang/CharSequence;

.field public ཇ:L㚬/䂻/ბ/㚬;

.field public ბ:I

.field public ᆻ:Landroid/graphics/drawable/Drawable;

.field public ᓭ:I

.field public ḓ:Landroid/graphics/drawable/Drawable;

.field public ἥ:Z

.field public ℓ:Z

.field public ㄏ:Ljava/lang/CharSequence;

.field public 㚬:Landroid/view/View;

.field public 㧦:Ljava/lang/CharSequence;

.field public 㲝:Landroid/graphics/drawable/Drawable;

.field public 㹖:Landroid/view/Window$Callback;

.field public 㺴:Landroid/view/View;

.field public 䂻:I

.field public 䆀:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 2

    sget v0, L㚬/䂻/ℓ;->உ:I

    sget v1, L㚬/䂻/ḓ;->ཇ:I

    invoke-direct {p0, p1, p2, v0, v1}, L㚬/䂻/ბ/ᇿ;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;ZII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput p4, p0, L㚬/䂻/ბ/ᇿ;->ᓭ:I

    iput p4, p0, L㚬/䂻/ბ/ᇿ;->ბ:I

    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ბ/ᇿ;->ㄏ:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ბ/ᇿ;->ಫ:Ljava/lang/CharSequence;

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->ㄏ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, L㚬/䂻/ბ/ᇿ;->ℓ:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ბ/ᇿ;->ᆻ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, L㚬/䂻/ಫ;->உ:[I

    sget v2, L㚬/䂻/உ;->㚬:I

    invoke-static {p1, v0, v1, v2, p4}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object p1

    sget v0, L㚬/䂻/ಫ;->㹖:I

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ბ/ᇿ;->㲝:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_c

    sget p2, L㚬/䂻/ಫ;->㞘:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/ᇿ;->㰫(Ljava/lang/CharSequence;)V

    :cond_1
    sget p2, L㚬/䂻/ಫ;->ბ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ბ(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/ᇿ;->ڈ(Ljava/lang/CharSequence;)V

    :cond_2
    sget p2, L㚬/䂻/ಫ;->ཇ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/ᇿ;->ㄬ(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    sget p2, L㚬/䂻/ಫ;->ἥ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/ᇿ;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object p2, p0, L㚬/䂻/ბ/ᇿ;->ᆻ:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, L㚬/䂻/ბ/ᇿ;->㲝:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/ᇿ;->ᾦ(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    sget p2, L㚬/䂻/ಫ;->ℓ:I

    invoke-virtual {p1, p2, p4}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result p2

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/ᇿ;->㖪(I)V

    sget p2, L㚬/䂻/ಫ;->ᆻ:I

    invoke-virtual {p1, p2, p4}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result p2

    if-eqz p2, :cond_6

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p2, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/ᇿ;->ม(Landroid/view/View;)V

    iget p2, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/ᇿ;->㖪(I)V

    :cond_6
    sget p2, L㚬/䂻/ಫ;->ಫ:I

    invoke-virtual {p1, p2, p4}, L㚬/䂻/ბ/ᣝ;->ἥ(II)I

    move-result p2

    if-lez p2, :cond_7

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    sget p2, L㚬/䂻/ಫ;->䆀:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result p2

    sget v1, L㚬/䂻/ಫ;->ḓ:I

    invoke-virtual {p1, v1, v0}, L㚬/䂻/ბ/ᣝ;->ḓ(II)I

    move-result v0

    if-gez p2, :cond_8

    if-ltz v0, :cond_9

    :cond_8
    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, p2, v0}, Landroidx/appcompat/widget/Toolbar;->ᱹ(II)V

    :cond_9
    sget p2, L㚬/䂻/ಫ;->㭲:I

    invoke-virtual {p1, p2, p4}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result p2

    if-eqz p2, :cond_a

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/Toolbar;->㖆(Landroid/content/Context;I)V

    :cond_a
    sget p2, L㚬/䂻/ಫ;->㲝:I

    invoke-virtual {p1, p2, p4}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result p2

    if-eqz p2, :cond_b

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/Toolbar;->ർ(Landroid/content/Context;I)V

    :cond_b
    sget p2, L㚬/䂻/ಫ;->ᓭ:I

    invoke-virtual {p1, p2, p4}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result p2

    if-eqz p2, :cond_d

    iget-object p4, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p4, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->㢏()I

    move-result p2

    iput p2, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    :cond_d
    :goto_1
    invoke-virtual {p1}, L㚬/䂻/ბ/ᣝ;->㢏()V

    invoke-virtual {p0, p3}, L㚬/䂻/ბ/ᇿ;->㲧(I)V

    iget-object p1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->㧦:Ljava/lang/CharSequence;

    iget-object p1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    new-instance p2, L㚬/䂻/ბ/ᇿ$உ;

    invoke-direct {p2, p0}, L㚬/䂻/ბ/ᇿ$உ;-><init>(L㚬/䂻/ბ/ᇿ;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public collapseActionView()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ḓ()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ᇿ;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->ḓ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->ᱹ()V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->㹖:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/ᇿ;->ℓ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ᇿ;->ש(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final ש(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->ㄏ:Ljava/lang/CharSequence;

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public ڈ(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->ಫ:Ljava/lang/CharSequence;

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public உ(Landroid/view/Menu;L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->ཇ:L㚬/䂻/ბ/㚬;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/㚬;

    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, L㚬/䂻/ბ/㚬;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, L㚬/䂻/ბ/ᇿ;->ཇ:L㚬/䂻/ბ/㚬;

    sget v1, L㚬/䂻/䆀;->ᆻ:I

    invoke-virtual {v0, v1}, L㚬/䂻/ᓭ/ಫ/䂻;->ბ(I)V

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->ཇ:L㚬/䂻/ბ/㚬;

    invoke-virtual {v0, p2}, L㚬/䂻/ᓭ/ಫ/䂻;->ℓ(L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V

    iget-object p2, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    check-cast p1, L㚬/䂻/ᓭ/ಫ/ᆻ;

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->ཇ:L㚬/䂻/ბ/㚬;

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/Toolbar;->㥁(L㚬/䂻/ᓭ/ಫ/ᆻ;L㚬/䂻/ბ/㚬;)V

    return-void
.end method

.method public ಋ(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->㧦:Ljava/lang/CharSequence;

    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->㨃()V

    return-void
.end method

.method public ಫ(I)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public ม(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->㺴:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->㺴:Landroid/view/View;

    if-eqz p1, :cond_1

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public ཇ(Z)V
    .locals 0

    return-void
.end method

.method public ბ(IJ)L㚬/ℓ/ἥ/ม;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->㚬(Landroid/view/View;)L㚬/ℓ/ἥ/ม;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, L㚬/ℓ/ἥ/ม;->உ(F)L㚬/ℓ/ἥ/ม;

    invoke-virtual {v0, p2, p3}, L㚬/ℓ/ἥ/ม;->㺴(J)L㚬/ℓ/ἥ/ม;

    new-instance p2, L㚬/䂻/ბ/ᇿ$䂻;

    invoke-direct {p2, p0, p1}, L㚬/䂻/ბ/ᇿ$䂻;-><init>(L㚬/䂻/ბ/ᇿ;I)V

    invoke-virtual {v0, p2}, L㚬/ℓ/ἥ/ม;->䆀(L㚬/ℓ/ἥ/㲧;)L㚬/ℓ/ἥ/ม;

    return-object v0
.end method

.method public ᆻ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->㺴()Z

    move-result v0

    return v0
.end method

.method public ᓭ()I
    .locals 1

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->ᓭ:I

    return v0
.end method

.method public final ᰘ()V
    .locals 2

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->ᆻ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->㲝:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final ᱹ()V
    .locals 2

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->䆀:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->ḓ:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public ḓ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->Ԁ()Z

    move-result v0

    return v0
.end method

.method public ḙ(Z)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public ἥ()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public ᾦ(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->ᆻ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->ᰘ()V

    return-void
.end method

.method public ℓ()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->䆀()V

    return-void
.end method

.method public ㄏ()I
    .locals 1

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    return v0
.end method

.method public ㄬ(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->䆀:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->ᱹ()V

    return-void
.end method

.method public 㖪(I)V
    .locals 3

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    xor-int/2addr v0, p1

    iput p1, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->㨃()V

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->ᰘ()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->ᱹ()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, L㚬/䂻/ბ/ᇿ;->ㄏ:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, L㚬/䂻/ბ/ᇿ;->ಫ:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->㺴:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    iget-object p1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public 㚬()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ಋ()Z

    move-result v0

    return v0
.end method

.method public 㞘()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->㢏()Z

    move-result v0

    return v0
.end method

.method public final 㢏()I
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, L㚬/䂻/ბ/ᇿ;->㲝:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    return v0
.end method

.method public 㧦(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ᇿ;->ㄬ(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final 㨃()V
    .locals 2

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->䂻:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->㧦:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, L㚬/䂻/ბ/ᇿ;->ბ:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->㧦:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public 㫏(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ბ/ᇿ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ᇿ;->ಋ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public 㭲()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public 㰫(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ბ/ᇿ;->ℓ:Z

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ᇿ;->ש(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public 㲝()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public 㲧(I)V
    .locals 1

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->ბ:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, L㚬/䂻/ბ/ᇿ;->ბ:I

    iget-object p1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, L㚬/䂻/ბ/ᇿ;->ბ:I

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ᇿ;->㫏(I)V

    :cond_1
    return-void
.end method

.method public 㹖(L㚬/䂻/ბ/ỷ;)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->㚬:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->㚬:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, L㚬/䂻/ბ/ᇿ;->㚬:Landroid/view/View;

    if-eqz p1, :cond_1

    iget v0, p0, L㚬/䂻/ბ/ᇿ;->ᓭ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->㚬:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$ḓ;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v1, 0x800053

    iput v1, v0, L㚬/䂻/㧦/உ$உ;->உ:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, L㚬/䂻/ბ/ỷ;->setAllowCollapse(Z)V

    :cond_1
    return-void
.end method

.method public 㺴()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ม()Z

    move-result v0

    return v0
.end method

.method public 䂻()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->㫏()Z

    move-result v0

    return v0
.end method

.method public 䆀()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ბ/ᇿ;->ἥ:Z

    return-void
.end method
