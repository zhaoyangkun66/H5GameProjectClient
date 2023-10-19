.class public final L㺴/㚬/உ/䂻/㖆/䆀;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Landroid/content/Context;

.field public ಫ:I

.field public ཇ:I

.field public ბ:Ljava/lang/CharSequence;

.field public ᆻ:Landroid/animation/Animator;

.field public ᓭ:Landroid/content/res/ColorStateList;

.field public ḓ:Landroid/widget/FrameLayout;

.field public ḙ:Landroid/content/res/ColorStateList;

.field public ἥ:Landroid/widget/TextView;

.field public final ℓ:F

.field public ㄏ:I

.field public 㖪:Landroid/graphics/Typeface;

.field public 㚬:Landroid/widget/LinearLayout;

.field public 㞘:Landroid/widget/TextView;

.field public 㧦:Ljava/lang/CharSequence;

.field public 㭲:I

.field public 㲝:Z

.field public 㹖:Z

.field public 㺴:I

.field public final 䂻:Lcom/google/android/material/textfield/TextInputLayout;

.field public 䆀:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->உ:Landroid/content/Context;

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, L㺴/㚬/உ/䂻/㺴;->ℓ:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ℓ:F

    return-void
.end method

.method public static synthetic உ(L㺴/㚬/உ/䂻/㖆/䆀;I)I
    .locals 0

    iput p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ㄏ:I

    return p1
.end method

.method public static synthetic 㚬(L㺴/㚬/உ/䂻/㖆/䆀;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic 䂻(L㺴/㚬/உ/䂻/㖆/䆀;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ᆻ:Landroid/animation/Animator;

    return-object p1
.end method


# virtual methods
.method public ש(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ḙ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public ڈ(I)V
    .locals 1

    iput p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㭲:I

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, L㚬/ℓ/ཇ/ㄏ;->ཇ(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public ಋ(I)V
    .locals 2

    iput p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ཇ:I

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->㮕(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public final ಫ(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 4

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ℓ:F

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xd9

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, L㺴/㚬/உ/䂻/㹖/உ;->㺴:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public ർ(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/䆀;->ᆻ()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㧦:Ljava/lang/CharSequence;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ㄏ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ:I

    :cond_0
    iget v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ:I

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㥁(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㭢(IIZ)V

    return-void
.end method

.method public ม()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㲝:Z

    return v0
.end method

.method public ཇ()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public ბ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ბ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public ᆻ()V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ᆻ:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public ᓭ()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public ᰘ(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㖪:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㖪:Landroid/graphics/Typeface;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㨃(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㨃(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final ᱹ(Landroid/view/ViewGroup;I)V
    .locals 0

    if-nez p2, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public ḓ()V
    .locals 4

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/䆀;->䆀()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, L㚬/ℓ/ἥ/㭲;->ᾦ(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, L㚬/ℓ/ἥ/㭲;->ಋ(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, L㚬/ℓ/ἥ/㭲;->ϣ(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public final ḙ(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㧦:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ἥ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㧦:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public ᾦ(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ᓭ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final ℓ(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    :cond_1
    if-ne p6, p4, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p3, p2}, L㺴/㚬/உ/䂻/㖆/䆀;->ㄏ(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_3

    invoke-virtual {p0, p3}, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final ㄏ(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 3

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa7

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, L㺴/㚬/உ/䂻/㹖/உ;->உ:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final ㄬ(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/㖆/䆀;->㹖(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㹖(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iput p2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ㄏ:I

    return-void
.end method

.method public 㖆(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/䆀;->ᆻ()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ბ:Ljava/lang/CharSequence;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ㄏ:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iput v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ:I

    :cond_0
    iget v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ:I

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㥁(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㭢(IIZ)V

    return-void
.end method

.method public 㖪(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public 㞘()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㧦:Ljava/lang/CharSequence;

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/䆀;->ᆻ()V

    iget v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ㄏ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㲝:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ბ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ:I

    :cond_1
    iget v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ㄏ:I

    iget v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ:I

    iget-object v3, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㥁(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㭢(IIZ)V

    return-void
.end method

.method public 㢏()Z
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㹖:Z

    return v0
.end method

.method public final 㥁(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->㖆(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ:I

    iget v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ㄏ:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public 㧦()Z
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ:I

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/㖆/䆀;->ḙ(I)Z

    move-result v0

    return v0
.end method

.method public final 㨃(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public 㫏(Z)V
    .locals 3

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㹖:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/䆀;->ᆻ()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v1, L㚬/䂻/ბ/ㄬ;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->உ:Landroid/content/Context;

    invoke-direct {v1, v2}, L㚬/䂻/ბ/ㄬ;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    sget v2, L㺴/㚬/உ/䂻/䆀;->㲧:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㖪:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ཇ:I

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㖆/䆀;->ಋ(I)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ᓭ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㖆/䆀;->ᾦ(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, L㚬/ℓ/ἥ/㭲;->Ᏼ(Landroid/view/View;I)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㺴(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/䆀;->㞘()V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㲧(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->㲊()V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->ග()V

    :goto_0
    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㹖:Z

    return-void
.end method

.method public final 㭢(IIZ)V
    .locals 9

    if-eqz p3, :cond_0

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ᆻ:Landroid/animation/Animator;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㲝:Z

    iget-object v3, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v8

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, L㺴/㚬/உ/䂻/㖆/䆀;->ℓ(Ljava/util/List;ZLandroid/widget/TextView;III)V

    iget-boolean v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㹖:Z

    iget-object v3, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, L㺴/㚬/உ/䂻/㖆/䆀;->ℓ(Ljava/util/List;ZLandroid/widget/TextView;III)V

    invoke-static {v7, v8}, L㺴/㚬/உ/䂻/㹖/䂻;->உ(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->㹖(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/㖆/䆀;->㹖(I)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, L㺴/㚬/உ/䂻/㖆/䆀$உ;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, L㺴/㚬/உ/䂻/㖆/䆀$உ;-><init>(L㺴/㚬/உ/䂻/㖆/䆀;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/㖆/䆀;->ㄬ(II)V

    :goto_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->㲊()V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p3}, Lcom/google/android/material/textfield/TextInputLayout;->ಇ(Z)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->ග()V

    return-void
.end method

.method public 㭲()V
    .locals 4

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/䆀;->ᆻ()V

    iget v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ㄏ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ:I

    :cond_0
    iget v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ಫ:I

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, L㺴/㚬/உ/䂻/㖆/䆀;->㥁(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, L㺴/㚬/உ/䂻/㖆/䆀;->㭢(IIZ)V

    return-void
.end method

.method public 㰫(Z)V
    .locals 3

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㲝:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/䆀;->ᆻ()V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    new-instance v1, L㚬/䂻/ბ/ㄬ;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->உ:Landroid/content/Context;

    invoke-direct {v1, v2}, L㚬/䂻/ბ/ㄬ;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    sget v2, L㺴/㚬/உ/䂻/䆀;->ㄬ:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㖪:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    invoke-static {v1, v0}, L㚬/ℓ/ἥ/㭲;->Ᏼ(Landroid/view/View;I)V

    iget v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㭲:I

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㖆/䆀;->ڈ(I)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ḙ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, L㺴/㚬/உ/䂻/㖆/䆀;->ש(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㺴(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/䆀;->㭲()V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, L㺴/㚬/உ/䂻/㖆/䆀;->㲧(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->㲊()V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->ග()V

    :goto_0
    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㲝:Z

    return-void
.end method

.method public 㲝()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public 㲧(Landroid/widget/TextView;I)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/㖆/䆀;->㖪(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ḓ:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    iget v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䆀:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䆀:I

    invoke-virtual {p0, p2, v0}, L㺴/㚬/உ/䂻/㖆/䆀;->ᱹ(Landroid/view/ViewGroup;I)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ḓ:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iget p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㺴:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㺴:I

    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, p1}, L㺴/㚬/உ/䂻/㖆/䆀;->ᱹ(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public final 㹖(I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㞘:Landroid/widget/TextView;

    return-object p1

    :cond_1
    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ἥ:Landroid/widget/TextView;

    return-object p1
.end method

.method public 㺴(Landroid/widget/TextView;I)V
    .locals 6

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ḓ:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->உ:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->உ:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ḓ:Landroid/widget/FrameLayout;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Space;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->உ:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/䆀;->ḓ()V

    :cond_0
    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/㖆/䆀;->㖪(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ḓ:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/䆀;->ḓ:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䆀:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䆀:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㺴:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㺴:I

    return-void
.end method

.method public final 䆀()Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->㚬:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/䆀;->䂻:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
