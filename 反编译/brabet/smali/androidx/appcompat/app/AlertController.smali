.class public Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$ℓ;,
        Landroidx/appcompat/app/AlertController$䆀;,
        Landroidx/appcompat/app/AlertController$RecycleListView;,
        Landroidx/appcompat/app/AlertController$ᆻ;
    }
.end annotation


# instance fields
.field public Ԁ:I

.field public Խ:I

.field public ש:Landroid/widget/TextView;

.field public ڈ:Landroid/graphics/drawable/Drawable;

.field public final உ:Landroid/content/Context;

.field public ಋ:Landroidx/core/widget/NestedScrollView;

.field public ಫ:I

.field public ർ:I

.field public ม:Landroid/widget/Button;

.field public ཇ:Z

.field public ბ:Ljava/lang/CharSequence;

.field public ᆻ:Landroid/widget/ListView;

.field public ᓭ:Landroid/widget/Button;

.field public ᰘ:Landroid/view/View;

.field public ᱹ:Landroid/widget/ListAdapter;

.field public ḓ:Ljava/lang/CharSequence;

.field public ḙ:Ljava/lang/CharSequence;

.field public ỷ:I

.field public ἂ:Landroid/os/Handler;

.field public ἥ:I

.field public ᾦ:I

.field public ℓ:Landroid/view/View;

.field public final ⵦ:Landroid/view/View$OnClickListener;

.field public ㄏ:I

.field public ㄬ:Landroid/os/Message;

.field public 㖆:I

.field public 㖪:Landroid/os/Message;

.field public final 㚬:Landroid/view/Window;

.field public 㞘:Landroid/graphics/drawable/Drawable;

.field public 㢏:Landroid/graphics/drawable/Drawable;

.field public 㥁:I

.field public 㧦:I

.field public 㨃:Landroid/widget/TextView;

.field public 㫏:Landroid/graphics/drawable/Drawable;

.field public 㭢:I

.field public 㭲:Landroid/widget/Button;

.field public 㮕:I

.field public 㰫:Landroid/widget/ImageView;

.field public 㲝:Landroid/os/Message;

.field public 㲧:Ljava/lang/CharSequence;

.field public 㹖:I

.field public final 㺴:I

.field public final 䂻:L㚬/䂻/㧦/䆀;

.field public 䅚:Z

.field public 䆀:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;L㚬/䂻/㧦/䆀;Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController;->ཇ:Z

    iput v0, p0, Landroidx/appcompat/app/AlertController;->ᾦ:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/app/AlertController;->㥁:I

    iput v0, p0, Landroidx/appcompat/app/AlertController;->㮕:I

    new-instance v1, Landroidx/appcompat/app/AlertController$உ;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertController$உ;-><init>(Landroidx/appcompat/app/AlertController;)V

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->ⵦ:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->உ:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->䂻:L㚬/䂻/㧦/䆀;

    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    new-instance p3, Landroidx/appcompat/app/AlertController$ᆻ;

    invoke-direct {p3, p2}, Landroidx/appcompat/app/AlertController$ᆻ;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->ἂ:Landroid/os/Handler;

    sget-object p3, L㚬/䂻/ಫ;->㰫:[I

    sget v1, L㚬/䂻/உ;->ཇ:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p3, L㚬/䂻/ಫ;->ש:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->ർ:I

    sget p3, L㚬/䂻/ಫ;->ᰘ:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->㖆:I

    sget p3, L㚬/䂻/ಫ;->㥁:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->㭢:I

    sget p3, L㚬/䂻/ಫ;->ർ:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->Խ:I

    sget p3, L㚬/䂻/ಫ;->㭢:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->Ԁ:I

    sget p3, L㚬/䂻/ಫ;->ᱹ:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->ỷ:I

    sget p3, L㚬/䂻/ಫ;->㖆:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/app/AlertController;->䅚:Z

    sget p3, L㚬/䂻/ಫ;->㨃:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->㺴:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2, v1}, L㚬/䂻/㧦/䆀;->ᆻ(I)Z

    return-void
.end method

.method public static உ(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->உ(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method public static 㫏(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, L㚬/䂻/உ;->ἥ:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static 䆀(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final ಫ()I
    .locals 3

    iget v0, p0, Landroidx/appcompat/app/AlertController;->㖆:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/appcompat/app/AlertController;->ർ:I

    return v0

    :cond_0
    iget v1, p0, Landroidx/appcompat/app/AlertController;->㮕:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    iget v0, p0, Landroidx/appcompat/app/AlertController;->ർ:I

    return v0
.end method

.method public final ม(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ℓ:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/app/AlertController;->ㄏ:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->உ:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Landroidx/appcompat/app/AlertController;->ㄏ:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Landroidx/appcompat/app/AlertController;->உ(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    sget v2, L㚬/䂻/䆀;->ཇ:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->ཇ:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/appcompat/app/AlertController;->ಫ:I

    iget v2, p0, Landroidx/appcompat/app/AlertController;->㧦:I

    iget v3, p0, Landroidx/appcompat/app/AlertController;->㹖:I

    iget v4, p0, Landroidx/appcompat/app/AlertController;->ἥ:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ᆻ:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, L㚬/䂻/ბ/ᱹ$உ;

    const/4 v0, 0x0

    iput v0, p1, L㚬/䂻/ბ/ᱹ$உ;->உ:F

    goto :goto_1

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public ཇ(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->ڈ:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AlertController;->ᾦ:I

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ბ(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    sget v1, L㚬/䂻/䆀;->㢏:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    sget v2, L㚬/䂻/䆀;->㖪:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    invoke-static {p2, p3, p4}, L㚬/ℓ/ἥ/㭲;->ᨧ(Landroid/view/View;II)V

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz v1, :cond_8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-nez p4, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v0, p2

    :cond_2
    if-eqz v1, :cond_3

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, p2

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_8

    :cond_4
    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->䆀:Ljava/lang/CharSequence;

    if-eqz p2, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Landroidx/appcompat/app/AlertController$䂻;

    invoke-direct {p2, p0, v0, v1}, Landroidx/appcompat/app/AlertController$䂻;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$䂻;)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Landroidx/appcompat/app/AlertController$㚬;

    invoke-direct {p2, p0, v0, v1}, Landroidx/appcompat/app/AlertController$㚬;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->ᆻ:Landroid/widget/ListView;

    if-eqz p2, :cond_6

    new-instance p1, Landroidx/appcompat/app/AlertController$㺴;

    invoke-direct {p1, p0, v0, v1}, Landroidx/appcompat/app/AlertController$㺴;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->ᆻ:Landroid/widget/ListView;

    new-instance p2, Landroidx/appcompat/app/AlertController$ḓ;

    invoke-direct {p2, p0, v0, v1}, Landroidx/appcompat/app/AlertController$ḓ;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method

.method public ᆻ(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->㲝(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ᓭ(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->䆀:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㨃:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public ḓ()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController;->ಫ()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->䂻:L㚬/䂻/㧦/䆀;

    invoke-virtual {v1, v0}, L㚬/䂻/㧦/䆀;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController;->ㄬ()V

    return-void
.end method

.method public ḙ(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->ℓ:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/app/AlertController;->ㄏ:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->ཇ:Z

    iput p2, p0, Landroidx/appcompat/app/AlertController;->ಫ:I

    iput p3, p0, Landroidx/appcompat/app/AlertController;->㧦:I

    iput p4, p0, Landroidx/appcompat/app/AlertController;->㹖:I

    iput p5, p0, Landroidx/appcompat/app/AlertController;->ἥ:I

    return-void
.end method

.method public ἥ(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->ڈ:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroidx/appcompat/app/AlertController;->ᾦ:I

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    iget v0, p0, Landroidx/appcompat/app/AlertController;->ᾦ:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ℓ(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->㲝(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final ㄏ(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p1, :cond_1

    instance-of p1, p2, Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method public final ㄬ()V
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    sget v1, L㚬/䂻/䆀;->ḙ:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, L㚬/䂻/䆀;->䅚:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, L㚬/䂻/䆀;->ἥ:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, L㚬/䂻/䆀;->㧦:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget v7, L㚬/䂻/䆀;->ᓭ:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertController;->ม(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/app/AlertController;->ㄏ(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/app/AlertController;->ㄏ(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0, v5, v6}, Landroidx/appcompat/app/AlertController;->ㄏ(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AlertController;->㢏(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AlertController;->㖪(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AlertController;->㲧(Landroid/view/ViewGroup;)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    sget v4, L㚬/䂻/䆀;->㖆:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v7, :cond_7

    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    :cond_4
    const/4 v4, 0x0

    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->䆀:Ljava/lang/CharSequence;

    if-nez v8, :cond_5

    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->ᆻ:Landroid/widget/ListView;

    if-eqz v8, :cond_6

    :cond_5
    sget v4, L㚬/䂻/䆀;->Ԁ:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    sget v1, L㚬/䂻/䆀;->㭢:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->ᆻ:Landroid/widget/ListView;

    instance-of v4, v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v4, :cond_9

    check-cast v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v1, v7, v3}, Landroidx/appcompat/app/AlertController$RecycleListView;->உ(ZZ)V

    :cond_9
    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ᆻ:Landroid/widget/ListView;

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    :goto_4
    if-eqz v0, :cond_c

    if-eqz v3, :cond_b

    const/4 v6, 0x2

    :cond_b
    or-int v1, v7, v6

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v0, v1, v3}, Landroidx/appcompat/app/AlertController;->ბ(Landroid/view/ViewGroup;Landroid/view/View;II)V

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ᆻ:Landroid/widget/ListView;

    if-eqz v0, :cond_d

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->ᱹ:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, p0, Landroidx/appcompat/app/AlertController;->㥁:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_d

    invoke-virtual {v0, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_d
    return-void
.end method

.method public final 㖪(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->ᓭ:Landroid/widget/Button;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->ⵦ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ბ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㞘:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ᓭ:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ᓭ:Landroid/widget/Button;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->ბ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㞘:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v5, p0, Landroidx/appcompat/app/AlertController;->㺴:I

    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ᓭ:Landroid/widget/Button;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->㞘:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ᓭ:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_0
    const v5, 0x102001a

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->㭲:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->ⵦ:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->ḙ:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->㢏:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->㭲:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->㭲:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->ḙ:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->㢏:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget v6, p0, Landroidx/appcompat/app/AlertController;->㺴:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->㭲:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->㢏:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->㭲:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_1
    const v5, 0x102001b

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->ม:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->ⵦ:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->㲧:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->㫏:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->ม:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->ม:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->㲧:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->㞘:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget v6, p0, Landroidx/appcompat/app/AlertController;->㺴:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->ᓭ:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->㞘:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->ม:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->உ:Landroid/content/Context;

    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->㫏(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne v0, v1, :cond_6

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->ᓭ:Landroid/widget/Button;

    :goto_3
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AlertController;->䂻(Landroid/widget/Button;)V

    goto :goto_4

    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->㭲:Landroid/widget/Button;

    goto :goto_3

    :cond_7
    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->ม:Landroid/widget/Button;

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public 㚬(I)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->உ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public 㞘(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->ℓ:Landroid/view/View;

    iput p1, p0, Landroidx/appcompat/app/AlertController;->ㄏ:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->ཇ:Z

    return-void
.end method

.method public final 㢏(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    sget v1, L㚬/䂻/䆀;->ม:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->㨃:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->䆀:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->㨃:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ᆻ:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ಋ:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->ᆻ:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public 㧦(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Landroidx/appcompat/app/AlertController;->ἂ:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->ბ:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->㲝:Landroid/os/Message;

    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->㞘:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->ḙ:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->㖪:Landroid/os/Message;

    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->㢏:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->㲧:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->ㄬ:Landroid/os/Message;

    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->㫏:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public 㭲(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->ℓ:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/app/AlertController;->ㄏ:I

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->ཇ:Z

    return-void
.end method

.method public 㲝(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->ḓ:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ש:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final 㲧(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ᰘ:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->ᰘ:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    sget v0, L㚬/䂻/䆀;->ỷ:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ḓ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->䅚:Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    sget v0, L㚬/䂻/䆀;->ಫ:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->ש:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ḓ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Landroidx/appcompat/app/AlertController;->ᾦ:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->ڈ:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->ש:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㚬:Landroid/view/Window;

    sget v2, L㚬/䂻/䆀;->ỷ:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->㰫:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public 㹖(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->ᰘ:Landroid/view/View;

    return-void
.end method

.method public 㺴()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->ᆻ:Landroid/widget/ListView;

    return-object v0
.end method

.method public final 䂻(Landroid/widget/Button;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
