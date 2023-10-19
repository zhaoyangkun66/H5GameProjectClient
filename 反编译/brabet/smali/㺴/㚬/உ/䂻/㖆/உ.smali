.class public L㺴/㚬/உ/䂻/㖆/உ;
.super L㺴/㚬/உ/䂻/㖆/ḓ;
.source ""


# instance fields
.field public ᆻ:Landroid/animation/ValueAnimator;

.field public final ḓ:Lcom/google/android/material/textfield/TextInputLayout$䆀;

.field public final 㺴:Landroid/text/TextWatcher;

.field public 䆀:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    invoke-direct {p0, p1}, L㺴/㚬/உ/䂻/㖆/ḓ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance p1, L㺴/㚬/உ/䂻/㖆/உ$உ;

    invoke-direct {p1, p0}, L㺴/㚬/உ/䂻/㖆/உ$உ;-><init>(L㺴/㚬/உ/䂻/㖆/உ;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ;->㺴:Landroid/text/TextWatcher;

    new-instance p1, L㺴/㚬/உ/䂻/㖆/உ$䂻;

    invoke-direct {p1, p0}, L㺴/㚬/உ/䂻/㖆/உ$䂻;-><init>(L㺴/㚬/உ/䂻/㖆/உ;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ;->ḓ:Lcom/google/android/material/textfield/TextInputLayout$䆀;

    return-void
.end method

.method public static ಫ(Landroid/text/Editable;)Z
    .locals 0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic ᆻ(L㺴/㚬/உ/䂻/㖆/உ;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㖆/உ;->㺴:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public static synthetic ḓ(L㺴/㚬/உ/䂻/㖆/உ;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㖆/உ;->ᆻ:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic 㺴(Landroid/text/Editable;)Z
    .locals 0

    invoke-static {p0}, L㺴/㚬/உ/䂻/㖆/உ;->ಫ(Landroid/text/Editable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 䆀(L㺴/㚬/உ/䂻/㖆/உ;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㖆/உ;->䆀:Landroid/animation/AnimatorSet;

    return-object p0
.end method


# virtual methods
.method public உ()V
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->䂻:Landroid/content/Context;

    sget v2, L㺴/㚬/உ/䂻/ḓ;->䆀:I

    invoke-static {v1, v2}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, L㺴/㚬/உ/䂻/ㄏ;->㺴:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, L㺴/㚬/உ/䂻/㖆/உ$㚬;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㖆/உ$㚬;-><init>(L㺴/㚬/உ/䂻/㖆/உ;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/உ;->ḓ:Lcom/google/android/material/textfield/TextInputLayout$䆀;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->㚬(Lcom/google/android/material/textfield/TextInputLayout$䆀;)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/உ;->㧦()V

    return-void
.end method

.method public final varargs ℓ([F)Landroid/animation/ValueAnimator;
    .locals 2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v0, L㺴/㚬/உ/䂻/㹖/உ;->உ:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, L㺴/㚬/உ/䂻/㖆/உ$䆀;

    invoke-direct {v0, p0}, L㺴/㚬/உ/䂻/㖆/உ$䆀;-><init>(L㺴/㚬/உ/䂻/㖆/உ;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final ㄏ()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, L㺴/㚬/உ/䂻/㹖/உ;->㺴:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, L㺴/㚬/உ/䂻/㖆/உ$ᆻ;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㖆/உ$ᆻ;-><init>(L㺴/㚬/உ/䂻/㖆/உ;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final 㧦()V
    .locals 6

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/உ;->ㄏ()Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, L㺴/㚬/உ/䂻/㖆/உ;->ℓ([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, L㺴/㚬/உ/䂻/㖆/உ;->䆀:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/உ;->䆀:Landroid/animation/AnimatorSet;

    new-instance v2, L㺴/㚬/உ/䂻/㖆/உ$㺴;

    invoke-direct {v2, p0}, L㺴/㚬/உ/䂻/㖆/உ$㺴;-><init>(L㺴/㚬/உ/䂻/㖆/உ;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/㖆/உ;->ℓ([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㖆/உ;->ᆻ:Landroid/animation/ValueAnimator;

    new-instance v1, L㺴/㚬/உ/䂻/㖆/உ$ḓ;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㖆/உ$ḓ;-><init>(L㺴/㚬/உ/䂻/㖆/உ;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
