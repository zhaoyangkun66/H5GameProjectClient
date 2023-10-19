.class public L㺴/㚬/உ/䂻/㖆/㺴;
.super L㺴/㚬/உ/䂻/㖆/ḓ;
.source ""


# static fields
.field public static final ᓭ:Z


# instance fields
.field public ಫ:Landroid/graphics/drawable/StateListDrawable;

.field public ཇ:Landroid/animation/ValueAnimator;

.field public ᆻ:Z

.field public final ḓ:Lcom/google/android/material/textfield/TextInputLayout$ḓ;

.field public ἥ:Landroid/animation/ValueAnimator;

.field public ℓ:Z

.field public ㄏ:J

.field public 㧦:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

.field public 㹖:Landroid/view/accessibility/AccessibilityManager;

.field public final 㺴:Landroid/text/TextWatcher;

.field public final 䆀:Lcom/google/android/material/textfield/TextInputLayout$䆀;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, L㺴/㚬/உ/䂻/㖆/㺴;->ᓭ:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    invoke-direct {p0, p1}, L㺴/㚬/உ/䂻/㖆/ḓ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance p1, L㺴/㚬/உ/䂻/㖆/㺴$உ;

    invoke-direct {p1, p0}, L㺴/㚬/உ/䂻/㖆/㺴$உ;-><init>(L㺴/㚬/உ/䂻/㖆/㺴;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->㺴:Landroid/text/TextWatcher;

    new-instance p1, L㺴/㚬/உ/䂻/㖆/㺴$䂻;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p1, p0, v0}, L㺴/㚬/உ/䂻/㖆/㺴$䂻;-><init>(L㺴/㚬/உ/䂻/㖆/㺴;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ḓ:Lcom/google/android/material/textfield/TextInputLayout$ḓ;

    new-instance p1, L㺴/㚬/உ/䂻/㖆/㺴$㚬;

    invoke-direct {p1, p0}, L㺴/㚬/உ/䂻/㖆/㺴$㚬;-><init>(L㺴/㚬/உ/䂻/㖆/㺴;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->䆀:Lcom/google/android/material/textfield/TextInputLayout$䆀;

    const/4 p1, 0x0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ᆻ:Z

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ℓ:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ㄏ:J

    return-void
.end method

.method public static synthetic ಫ(L㺴/㚬/உ/䂻/㖆/㺴;Z)Z
    .locals 0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ᆻ:Z

    return p1
.end method

.method public static synthetic ཇ(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㖆/㺴;->㞘(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public static synthetic ბ(L㺴/㚬/உ/䂻/㖆/㺴;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->㺴:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public static synthetic ᆻ(L㺴/㚬/உ/䂻/㖆/㺴;J)J
    .locals 0

    iput-wide p1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ㄏ:J

    return-wide p1
.end method

.method public static synthetic ᓭ(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㖆/㺴;->ᾦ(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public static synthetic ḓ(L㺴/㚬/உ/䂻/㖆/㺴;Z)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㖆/㺴;->㫏(Z)V

    return-void
.end method

.method public static synthetic ἥ(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㖆/㺴;->ಋ(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public static synthetic ℓ(L㺴/㚬/உ/䂻/㖆/㺴;)Z
    .locals 0

    iget-boolean p0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ℓ:Z

    return p0
.end method

.method public static synthetic ㄏ(L㺴/㚬/உ/䂻/㖆/㺴;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ཇ:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic 㧦(L㺴/㚬/உ/䂻/㖆/㺴;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->㹖:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public static synthetic 㲝(L㺴/㚬/உ/䂻/㖆/㺴;)Lcom/google/android/material/textfield/TextInputLayout$ḓ;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ḓ:Lcom/google/android/material/textfield/TextInputLayout$ḓ;

    return-object p0
.end method

.method public static synthetic 㹖(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㖆/㺴;->ڈ(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public static synthetic 㺴(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㖆/㺴;->㖪(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 䆀(L㺴/㚬/உ/䂻/㖆/㺴;)Z
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/㺴;->ㄬ()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final ڈ(Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/㺴;->ㄬ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ᆻ:Z

    :cond_1
    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ᆻ:Z

    if-nez v0, :cond_4

    sget-boolean v0, L㺴/㚬/உ/䂻/㖆/㺴;->ᓭ:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ℓ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/㖆/㺴;->㫏(Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ℓ:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ℓ:Z

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->㚬:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    :goto_0
    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ℓ:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ᆻ:Z

    :goto_1
    return-void
.end method

.method public உ()V
    .locals 6

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->䂻:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, L㺴/㚬/உ/䂻/㺴;->ม:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->䂻:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, L㺴/㚬/உ/䂻/㺴;->㖪:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->䂻:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, L㺴/㚬/உ/䂻/㺴;->㢏:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, L㺴/㚬/உ/䂻/㖆/㺴;->ม(FFFI)L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0, v1, v2}, L㺴/㚬/உ/䂻/㖆/㺴;->ม(FFFI)L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v0

    iput-object v3, p0, L㺴/㚬/உ/䂻/㖆/㺴;->㧦:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ಫ:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, 0x10100aa

    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ಫ:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-boolean v0, L㺴/㚬/உ/䂻/㖆/㺴;->ᓭ:Z

    if-eqz v0, :cond_0

    sget v0, L㺴/㚬/உ/䂻/ḓ;->㺴:I

    goto :goto_0

    :cond_0
    sget v0, L㺴/㚬/உ/䂻/ḓ;->ḓ:I

    :goto_0
    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->䂻:Landroid/content/Context;

    invoke-static {v2, v0}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, L㺴/㚬/உ/䂻/ㄏ;->䆀:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, L㺴/㚬/உ/䂻/㖆/㺴$㺴;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㖆/㺴$㺴;-><init>(L㺴/㚬/உ/䂻/㖆/㺴;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->䆀:Lcom/google/android/material/textfield/TextInputLayout$䆀;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->㚬(Lcom/google/android/material/textfield/TextInputLayout$䆀;)V

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/㺴;->㲧()V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->㚬:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x2

    invoke-static {v0, v1}, L㚬/ℓ/ἥ/㭲;->ⷜ(Landroid/view/View;I)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->䂻:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->㹖:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public final ಋ(Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    sget-boolean v0, L㺴/㚬/உ/䂻/㖆/㺴;->ᓭ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->㧦:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ಫ:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final ม(FFFI)L㺴/㚬/உ/䂻/ᱹ/ᆻ;
    .locals 1

    invoke-static {}, L㺴/㚬/உ/䂻/ᱹ/㧦;->உ()L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->㫏(F)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->㰫(F)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    invoke-virtual {v0, p2}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->㞘(F)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    invoke-virtual {v0, p2}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->㢏(F)L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/㧦$䂻;->ἥ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object p1

    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->䂻:Landroid/content/Context;

    invoke-static {p2, p3}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->㹖(Landroid/content/Context;F)L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object p2

    invoke-virtual {p2, p1}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setShapeAppearanceModel(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p4, p1, p4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᣝ(IIII)V

    return-object p2
.end method

.method public final ḙ(Landroid/widget/AutoCompleteTextView;I[[IL㺴/㚬/உ/䂻/ᱹ/ᆻ;)V
    .locals 7

    sget v0, L㺴/㚬/உ/䂻/䂻;->ಫ:I

    invoke-static {p1, v0}, L㺴/㚬/உ/䂻/㖪/உ;->㚬(Landroid/view/View;I)I

    move-result v0

    new-instance v1, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᾦ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v2

    invoke-direct {v1, v2}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {p2, v0, v2}, L㺴/㚬/உ/䂻/㖪/உ;->䆀(IIF)I

    move-result p2

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, p3, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v6}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᭊ(Landroid/content/res/ColorStateList;)V

    sget-boolean v3, L㺴/㚬/உ/䂻/㖆/㺴;->ᓭ:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setTint(I)V

    new-array v3, v2, [I

    aput p2, v3, v4

    aput v0, v3, v5

    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, p3, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance p3, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᾦ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v0

    invoke-direct {p3, v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->setTint(I)V

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p2, v1, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array p2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, p2, v4

    aput-object p4, p2, v5

    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p3, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-array p2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v1, p2, v4

    aput-object p4, p2, v5

    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p3, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-static {p1, p3}, L㚬/ℓ/ἥ/㭲;->㠭(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final ᾦ(Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    new-instance v0, L㺴/㚬/உ/䂻/㖆/㺴$ḓ;

    invoke-direct {v0, p0, p1}, L㺴/㚬/உ/䂻/㖆/㺴$ḓ;-><init>(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, L㺴/㚬/உ/䂻/㖆/㺴$䆀;

    invoke-direct {v0, p0}, L㺴/㚬/உ/䂻/㖆/㺴$䆀;-><init>(L㺴/㚬/உ/䂻/㖆/㺴;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-boolean v0, L㺴/㚬/உ/䂻/㖆/㺴;->ᓭ:Z

    if-eqz v0, :cond_0

    new-instance v0, L㺴/㚬/உ/䂻/㖆/㺴$ᆻ;

    invoke-direct {v0, p0}, L㺴/㚬/உ/䂻/㖆/㺴$ᆻ;-><init>(L㺴/㚬/உ/䂻/㖆/㺴;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public final ㄬ()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ㄏ:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final 㖪(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    instance-of v0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 㚬()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final 㞘(Landroid/widget/AutoCompleteTextView;)V
    .locals 9

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    move-result-object v1

    sget v2, L㺴/㚬/உ/䂻/䂻;->䆀:I

    invoke-static {p1, v2}, L㺴/㚬/உ/䂻/㖪/உ;->㚬(Landroid/view/View;I)I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x10100a7

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v4, v8

    new-array v6, v8, [I

    aput-object v6, v4, v5

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, p1, v2, v4, v1}, L㺴/㚬/உ/䂻/㖆/㺴;->ḙ(Landroid/widget/AutoCompleteTextView;I[[IL㺴/㚬/உ/䂻/ᱹ/ᆻ;)V

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    invoke-virtual {p0, p1, v2, v4, v1}, L㺴/㚬/உ/䂻/㖆/㺴;->㭲(Landroid/widget/AutoCompleteTextView;I[[IL㺴/㚬/உ/䂻/ᱹ/ᆻ;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final varargs 㢏(I[F)Landroid/animation/ValueAnimator;
    .locals 2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    sget-object v0, L㺴/㚬/உ/䂻/㹖/உ;->உ:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, L㺴/㚬/உ/䂻/㖆/㺴$ㄏ;

    invoke-direct {p1, p0}, L㺴/㚬/உ/䂻/㖆/㺴$ㄏ;-><init>(L㺴/㚬/உ/䂻/㖆/㺴;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method public final 㫏(Z)V
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ℓ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ℓ:Z

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ཇ:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ἥ:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final 㭲(Landroid/widget/AutoCompleteTextView;I[[IL㺴/㚬/உ/䂻/ᱹ/ᆻ;)V
    .locals 5

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p2, v0, v1}, L㺴/㚬/உ/䂻/㖪/உ;->䆀(IIF)I

    move-result p2

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput v0, v2, p2

    sget-boolean v0, L㺴/㚬/உ/䂻/㖆/㺴;->ᓭ:Z

    if-eqz v0, :cond_0

    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance p3, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p3, p2, p4, p4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, p3}, L㚬/ℓ/ἥ/㭲;->㠭(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {p4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᾦ()L㺴/㚬/உ/䂻/ᱹ/㧦;

    move-result-object v4

    invoke-direct {v0, v4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;-><init>(L㺴/㚬/உ/䂻/ᱹ/㧦;)V

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v4}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ᭊ(Landroid/content/res/ColorStateList;)V

    new-array p3, v1, [Landroid/graphics/drawable/Drawable;

    aput-object p4, p3, v3

    aput-object v0, p3, p2

    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->ᾦ(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result p4

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->ಋ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v1

    invoke-static {p1, p2}, L㚬/ℓ/ἥ/㭲;->㠭(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, p3, p4, v0, v1}, L㚬/ℓ/ἥ/㭲;->ϣ(Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method public final 㲧()V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/16 v2, 0x43

    invoke-virtual {p0, v2, v1}, L㺴/㚬/உ/䂻/㖆/㺴;->㢏(I[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ཇ:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, L㺴/㚬/உ/䂻/㖆/㺴;->㢏(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㖆/㺴;->ἥ:Landroid/animation/ValueAnimator;

    new-instance v1, L㺴/㚬/உ/䂻/㖆/㺴$ℓ;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㖆/㺴$ℓ;-><init>(L㺴/㚬/உ/䂻/㖆/㺴;)V

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

.method public 䂻(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
