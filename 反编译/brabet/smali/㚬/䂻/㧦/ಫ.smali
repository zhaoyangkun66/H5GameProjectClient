.class public L㚬/䂻/㧦/ಫ;
.super L㚬/䂻/㧦/உ;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$㺴;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/㧦/ಫ$㺴;
    }
.end annotation


# static fields
.field public static final ڈ:Landroid/view/animation/Interpolator;

.field public static final ᾦ:Landroid/view/animation/Interpolator;


# instance fields
.field public உ:Landroid/content/Context;

.field public final ಋ:L㚬/ℓ/ἥ/㫏;

.field public ಫ:L㚬/䂻/㧦/ಫ$㺴;

.field public ม:Z

.field public ཇ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u40bb/\u39e6/\u0b89$\u40bb;",
            ">;"
        }
    .end annotation
.end field

.field public ბ:I

.field public ᆻ:Landroid/view/View;

.field public ᓭ:Z

.field public ḓ:L㚬/䂻/ბ/ڈ;

.field public ḙ:Z

.field public ἥ:Z

.field public ℓ:L㚬/䂻/ბ/ỷ;

.field public ㄏ:Z

.field public final ㄬ:L㚬/ℓ/ἥ/㲧;

.field public 㖪:Z

.field public 㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public 㞘:Z

.field public 㢏:L㚬/䂻/ᓭ/ℓ;

.field public 㧦:L㚬/䂻/ᓭ/䂻;

.field public final 㫏:L㚬/ℓ/ἥ/㲧;

.field public 㭲:Z

.field public 㲝:Z

.field public 㲧:Z

.field public 㹖:L㚬/䂻/ᓭ/䂻$உ;

.field public 㺴:Landroidx/appcompat/widget/ActionBarContainer;

.field public 䂻:Landroid/content/Context;

.field public 䆀:Landroidx/appcompat/widget/ActionBarContextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, L㚬/䂻/㧦/ಫ;->ᾦ:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, L㚬/䂻/㧦/ಫ;->ڈ:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0}, L㚬/䂻/㧦/உ;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->ཇ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/㧦/ಫ;->ბ:I

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㲝:Z

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㖪:Z

    new-instance v0, L㚬/䂻/㧦/ಫ$உ;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/ಫ$உ;-><init>(L㚬/䂻/㧦/ಫ;)V

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->ㄬ:L㚬/ℓ/ἥ/㲧;

    new-instance v0, L㚬/䂻/㧦/ಫ$䂻;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/ಫ$䂻;-><init>(L㚬/䂻/㧦/ಫ;)V

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->㫏:L㚬/ℓ/ἥ/㲧;

    new-instance v0, L㚬/䂻/㧦/ಫ$㚬;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/ಫ$㚬;-><init>(L㚬/䂻/㧦/ಫ;)V

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->ಋ:L㚬/ℓ/ἥ/㫏;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ;->㰫(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/㧦/ಫ;->ᆻ:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, L㚬/䂻/㧦/உ;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->ཇ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/㧦/ಫ;->ბ:I

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㲝:Z

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㖪:Z

    new-instance v0, L㚬/䂻/㧦/ಫ$உ;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/ಫ$உ;-><init>(L㚬/䂻/㧦/ಫ;)V

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->ㄬ:L㚬/ℓ/ἥ/㲧;

    new-instance v0, L㚬/䂻/㧦/ಫ$䂻;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/ಫ$䂻;-><init>(L㚬/䂻/㧦/ಫ;)V

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->㫏:L㚬/ℓ/ἥ/㲧;

    new-instance v0, L㚬/䂻/㧦/ಫ$㚬;

    invoke-direct {v0, p0}, L㚬/䂻/㧦/ಫ$㚬;-><init>(L㚬/䂻/㧦/ಫ;)V

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->ಋ:L㚬/ℓ/ἥ/㫏;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ;->㰫(Landroid/view/View;)V

    return-void
.end method

.method public static ม(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final Խ(Z)V
    .locals 3

    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㞘:Z

    iget-boolean v1, p0, L㚬/䂻/㧦/ಫ;->㭲:Z

    iget-boolean v2, p0, L㚬/䂻/㧦/ಫ;->ḙ:Z

    invoke-static {v0, v1, v2}, L㚬/䂻/㧦/ಫ;->ม(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㖪:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㖪:Z

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ;->㫏(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㖪:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㖪:Z

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ;->ㄬ(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ש(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, L㚬/䂻/㧦/ಫ;->㨃(II)V

    return-void
.end method

.method public final ڈ()V
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->ḙ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->ḙ:Z

    iget-object v1, p0, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ಫ;->Խ(Z)V

    :cond_1
    return-void
.end method

.method public உ(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/㧦/ಫ;->㲝:Z

    return-void
.end method

.method public final ಋ(Landroid/view/View;)L㚬/䂻/ბ/ڈ;
    .locals 3

    instance-of v0, p1, L㚬/䂻/ბ/ڈ;

    if-eqz v0, :cond_0

    check-cast p1, L㚬/䂻/ბ/ڈ;

    return-object p1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()L㚬/䂻/ბ/ڈ;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ಫ()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {v0}, L㚬/䂻/ბ/ڈ;->ㄏ()I

    move-result v0

    return v0
.end method

.method public ർ(Z)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {v0, p1}, L㚬/䂻/ბ/ڈ;->ཇ(Z)V

    return-void
.end method

.method public ᓭ(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ಫ:L㚬/䂻/㧦/ಫ$㺴;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, L㚬/䂻/㧦/ಫ$㺴;->ḓ()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public ᰘ(F)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, L㚬/ℓ/ἥ/㭲;->ⶬ(Landroid/view/View;F)V

    return-void
.end method

.method public final ᱹ(Z)V
    .locals 4

    iput-boolean p1, p0, L㚬/䂻/㧦/ಫ;->ᓭ:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {p1, v0}, L㚬/䂻/ბ/ڈ;->㹖(L㚬/䂻/ბ/ỷ;)V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ℓ:L㚬/䂻/ბ/ỷ;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(L㚬/䂻/ბ/ỷ;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(L㚬/䂻/ბ/ỷ;)V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ℓ:L㚬/䂻/ბ/ỷ;

    invoke-interface {p1, v0}, L㚬/䂻/ბ/ڈ;->㹖(L㚬/䂻/ბ/ỷ;)V

    :goto_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ಫ;->ᾦ()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ℓ:L㚬/䂻/ბ/ỷ;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->㽛(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    iget-boolean v3, p0, L㚬/䂻/㧦/ಫ;->ᓭ:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v0, v3}, L㚬/䂻/ბ/ڈ;->ḙ(Z)V

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, L㚬/䂻/㧦/ಫ;->ᓭ:Z

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public ḓ()V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㭲:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㭲:Z

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ಫ;->Խ(Z)V

    :cond_0
    return-void
.end method

.method public ḙ(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {v0, p1}, L㚬/䂻/ბ/ڈ;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public ἥ(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->உ:Landroid/content/Context;

    invoke-static {p1}, L㚬/䂻/ᓭ/உ;->䂻(Landroid/content/Context;)L㚬/䂻/ᓭ/உ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/䂻/ᓭ/உ;->ᆻ()Z

    move-result p1

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ;->ᱹ(Z)V

    return-void
.end method

.method public ᾦ()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {v0}, L㚬/䂻/ბ/ڈ;->ᓭ()I

    move-result v0

    return v0
.end method

.method public ℓ()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㚬/䂻/ბ/ڈ;->㞘()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {v0}, L㚬/䂻/ბ/ڈ;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ㄏ(Z)V
    .locals 3

    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->ἥ:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, L㚬/䂻/㧦/ಫ;->ἥ:Z

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ཇ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, L㚬/䂻/㧦/ಫ;->ཇ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/䂻/㧦/உ$䂻;

    invoke-interface {v2, p1}, L㚬/䂻/㧦/உ$䂻;->உ(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ㄬ(Z)V
    .locals 4

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㢏:L㚬/䂻/ᓭ/ℓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ℓ;->உ()V

    :cond_0
    iget v0, p0, L㚬/䂻/㧦/ಫ;->ბ:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->ม:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, L㚬/䂻/ᓭ/ℓ;

    invoke-direct {v0}, L㚬/䂻/ᓭ/ℓ;-><init>()V

    iget-object v2, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iget-object v3, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    :cond_2
    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㚬(Landroid/view/View;)L㚬/ℓ/ἥ/ม;

    move-result-object p1

    invoke-virtual {p1, v2}, L㚬/ℓ/ἥ/ม;->㧦(F)L㚬/ℓ/ἥ/ม;

    iget-object v1, p0, L㚬/䂻/㧦/ಫ;->ಋ:L㚬/ℓ/ἥ/㫏;

    invoke-virtual {p1, v1}, L㚬/ℓ/ἥ/ม;->ㄏ(L㚬/ℓ/ἥ/㫏;)L㚬/ℓ/ἥ/ม;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ℓ;->㚬(L㚬/ℓ/ἥ/ม;)L㚬/䂻/ᓭ/ℓ;

    iget-boolean p1, p0, L㚬/䂻/㧦/ಫ;->㲝:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ᆻ:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㚬(Landroid/view/View;)L㚬/ℓ/ἥ/ม;

    move-result-object p1

    invoke-virtual {p1, v2}, L㚬/ℓ/ἥ/ม;->㧦(F)L㚬/ℓ/ἥ/ม;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ℓ;->㚬(L㚬/ℓ/ἥ/ม;)L㚬/䂻/ᓭ/ℓ;

    :cond_3
    sget-object p1, L㚬/䂻/㧦/ಫ;->ᾦ:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ℓ;->䆀(Landroid/view/animation/Interpolator;)L㚬/䂻/ᓭ/ℓ;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, L㚬/䂻/ᓭ/ℓ;->ḓ(J)L㚬/䂻/ᓭ/ℓ;

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ㄬ:L㚬/ℓ/ἥ/㲧;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ℓ;->ᆻ(L㚬/ℓ/ἥ/㲧;)L㚬/䂻/ᓭ/ℓ;

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->㢏:L㚬/䂻/ᓭ/ℓ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ℓ;->ℓ()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ㄬ:L㚬/ℓ/ἥ/㲧;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, L㚬/ℓ/ἥ/㲧;->உ(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final 㖆()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->㖆(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public 㖪(L㚬/䂻/ᓭ/䂻$உ;)L㚬/䂻/ᓭ/䂻;
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ಫ:L㚬/䂻/㧦/ಫ$㺴;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/㧦/ಫ$㺴;->㚬()V

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->㧦()V

    new-instance v0, L㚬/䂻/㧦/ಫ$㺴;

    iget-object v1, p0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, L㚬/䂻/㧦/ಫ$㺴;-><init>(L㚬/䂻/㧦/ಫ;Landroid/content/Context;L㚬/䂻/ᓭ/䂻$உ;)V

    invoke-virtual {v0}, L㚬/䂻/㧦/ಫ$㺴;->ḙ()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->ಫ:L㚬/䂻/㧦/ಫ$㺴;

    invoke-virtual {v0}, L㚬/䂻/㧦/ಫ$㺴;->㧦()V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->ℓ(L㚬/䂻/ᓭ/䂻;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ;->㢏(Z)V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public 㚬()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㢏:L㚬/䂻/ᓭ/ℓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ℓ;->உ()V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->㢏:L㚬/䂻/ᓭ/ℓ;

    :cond_0
    return-void
.end method

.method public 㞘(Z)V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->ㄏ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ;->ש(Z)V

    :cond_0
    return-void
.end method

.method public 㢏(Z)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, L㚬/䂻/㧦/ಫ;->㭢()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ಫ;->ڈ()V

    :goto_0
    invoke-virtual {p0}, L㚬/䂻/㧦/ಫ;->㖆()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_1

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {p1, v1, v4, v5}, L㚬/䂻/ბ/ڈ;->ბ(IJ)L㚬/ℓ/ἥ/ม;

    move-result-object p1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v6, v7}, L㚬/䂻/ბ/உ;->䆀(IJ)L㚬/ℓ/ἥ/ม;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {p1, v3, v6, v7}, L㚬/䂻/ბ/ڈ;->ბ(IJ)L㚬/ℓ/ἥ/ม;

    move-result-object v0

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v4, v5}, L㚬/䂻/ბ/உ;->䆀(IJ)L㚬/ℓ/ἥ/ม;

    move-result-object p1

    :goto_1
    new-instance v1, L㚬/䂻/ᓭ/ℓ;

    invoke-direct {v1}, L㚬/䂻/ᓭ/ℓ;-><init>()V

    invoke-virtual {v1, p1, v0}, L㚬/䂻/ᓭ/ℓ;->㺴(L㚬/ℓ/ἥ/ม;L㚬/ℓ/ἥ/ม;)L㚬/䂻/ᓭ/ℓ;

    invoke-virtual {v1}, L㚬/䂻/ᓭ/ℓ;->ℓ()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {p1, v1}, L㚬/䂻/ბ/ڈ;->ಫ(I)V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {p1, v3}, L㚬/䂻/ბ/ڈ;->ಫ(I)V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public 㥁(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ม()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, L㚬/䂻/㧦/ಫ;->㲧:Z

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public 㧦()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->䂻:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, L㚬/䂻/㧦/ಫ;->உ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, L㚬/䂻/உ;->ᆻ:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, L㚬/䂻/㧦/ಫ;->உ:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, L㚬/䂻/㧦/ಫ;->䂻:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->உ:Landroid/content/Context;

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->䂻:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->䂻:Landroid/content/Context;

    return-object v0
.end method

.method public 㨃(II)V
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {v0}, L㚬/䂻/ბ/ڈ;->ㄏ()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, L㚬/䂻/㧦/ಫ;->ㄏ:Z

    :cond_0
    iget-object v1, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, L㚬/䂻/ბ/ڈ;->㖪(I)V

    return-void
.end method

.method public 㫏(Z)V
    .locals 4

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㢏:L㚬/䂻/ᓭ/ℓ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ℓ;->உ()V

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, L㚬/䂻/㧦/ಫ;->ბ:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->ม:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iget-object v2, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_2
    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    new-instance p1, L㚬/䂻/ᓭ/ℓ;

    invoke-direct {p1}, L㚬/䂻/ᓭ/ℓ;-><init>()V

    iget-object v2, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, L㚬/ℓ/ἥ/㭲;->㚬(Landroid/view/View;)L㚬/ℓ/ἥ/ม;

    move-result-object v2

    invoke-virtual {v2, v1}, L㚬/ℓ/ἥ/ม;->㧦(F)L㚬/ℓ/ἥ/ม;

    iget-object v3, p0, L㚬/䂻/㧦/ಫ;->ಋ:L㚬/ℓ/ἥ/㫏;

    invoke-virtual {v2, v3}, L㚬/ℓ/ἥ/ม;->ㄏ(L㚬/ℓ/ἥ/㫏;)L㚬/ℓ/ἥ/ม;

    invoke-virtual {p1, v2}, L㚬/䂻/ᓭ/ℓ;->㚬(L㚬/ℓ/ἥ/ม;)L㚬/䂻/ᓭ/ℓ;

    iget-boolean v2, p0, L㚬/䂻/㧦/ಫ;->㲝:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, L㚬/䂻/㧦/ಫ;->ᆻ:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ᆻ:Landroid/view/View;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->㚬(Landroid/view/View;)L㚬/ℓ/ἥ/ม;

    move-result-object v0

    invoke-virtual {v0, v1}, L㚬/ℓ/ἥ/ม;->㧦(F)L㚬/ℓ/ἥ/ม;

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ℓ;->㚬(L㚬/ℓ/ἥ/ม;)L㚬/䂻/ᓭ/ℓ;

    :cond_3
    sget-object v0, L㚬/䂻/㧦/ಫ;->ڈ:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ℓ;->䆀(Landroid/view/animation/Interpolator;)L㚬/䂻/ᓭ/ℓ;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, L㚬/䂻/ᓭ/ℓ;->ḓ(J)L㚬/䂻/ᓭ/ℓ;

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㫏:L㚬/ℓ/ἥ/㲧;

    invoke-virtual {p1, v0}, L㚬/䂻/ᓭ/ℓ;->ᆻ(L㚬/ℓ/ἥ/㲧;)L㚬/䂻/ᓭ/ℓ;

    iput-object p1, p0, L㚬/䂻/㧦/ಫ;->㢏:L㚬/䂻/ᓭ/ℓ;

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ℓ;->ℓ()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-boolean p1, p0, L㚬/䂻/㧦/ಫ;->㲝:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ᆻ:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->㫏:L㚬/ℓ/ἥ/㲧;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, L㚬/ℓ/ἥ/㲧;->உ(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㽛(Landroid/view/View;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final 㭢()V
    .locals 2

    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->ḙ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->ḙ:Z

    iget-object v1, p0, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ಫ;->Խ(Z)V

    :cond_1
    return-void
.end method

.method public 㭲(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/㧦/ಫ;->ม:Z

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->㢏:L㚬/䂻/ᓭ/ℓ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ℓ;->உ()V

    :cond_0
    return-void
.end method

.method public final 㰫(Landroid/view/View;)V
    .locals 5

    sget v0, L㚬/䂻/䆀;->ბ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->㚬:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$㺴;)V

    :cond_0
    sget v0, L㚬/䂻/䆀;->உ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ಫ;->ಋ(Landroid/view/View;)L㚬/䂻/ბ/ڈ;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    sget v0, L㚬/䂻/䆀;->䆀:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, L㚬/䂻/䆀;->㚬:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, L㚬/䂻/㧦/ಫ;->㺴:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    if-eqz v0, :cond_7

    iget-object v1, p0, L㚬/䂻/㧦/ಫ;->䆀:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {v0}, L㚬/䂻/ბ/ڈ;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/㧦/ಫ;->உ:Landroid/content/Context;

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->ḓ:L㚬/䂻/ბ/ڈ;

    invoke-interface {p1}, L㚬/䂻/ბ/ڈ;->ㄏ()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->ㄏ:Z

    :cond_2
    iget-object v2, p0, L㚬/䂻/㧦/ಫ;->உ:Landroid/content/Context;

    invoke-static {v2}, L㚬/䂻/ᓭ/உ;->䂻(Landroid/content/Context;)L㚬/䂻/ᓭ/உ;

    move-result-object v2

    invoke-virtual {v2}, L㚬/䂻/ᓭ/உ;->உ()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ;->ർ(Z)V

    invoke-virtual {v2}, L㚬/䂻/ᓭ/உ;->ᆻ()Z

    move-result p1

    invoke-virtual {p0, p1}, L㚬/䂻/㧦/ಫ;->ᱹ(Z)V

    iget-object p1, p0, L㚬/䂻/㧦/ಫ;->உ:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, L㚬/䂻/ಫ;->உ:[I

    sget v4, L㚬/䂻/உ;->㚬:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, L㚬/䂻/ಫ;->㧦:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ಫ;->㥁(Z)V

    :cond_5
    sget v0, L㚬/䂻/ಫ;->ㄏ:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ಫ;->ᰘ(F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, L㚬/䂻/㧦/ಫ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㲧()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/㧦/ಫ;->㹖:L㚬/䂻/ᓭ/䂻$உ;

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/䂻/㧦/ಫ;->㧦:L㚬/䂻/ᓭ/䂻;

    invoke-interface {v0, v1}, L㚬/䂻/ᓭ/䂻$உ;->㺴(L㚬/䂻/ᓭ/䂻;)V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->㧦:L㚬/䂻/ᓭ/䂻;

    iput-object v0, p0, L㚬/䂻/㧦/ಫ;->㹖:L㚬/䂻/ᓭ/䂻$உ;

    :cond_0
    return-void
.end method

.method public 㺴(I)V
    .locals 0

    iput p1, p0, L㚬/䂻/㧦/ಫ;->ბ:I

    return-void
.end method

.method public 䂻()V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㭲:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/㧦/ಫ;->㭲:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, L㚬/䂻/㧦/ಫ;->Խ(Z)V

    :cond_0
    return-void
.end method

.method public 䆀()V
    .locals 0

    return-void
.end method
