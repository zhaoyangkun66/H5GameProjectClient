.class public L㺴/㚬/உ/䂻/㖆/ℓ;
.super L㺴/㚬/உ/䂻/㖆/ḓ;
.source ""


# instance fields
.field public final ḓ:Lcom/google/android/material/textfield/TextInputLayout$䆀;

.field public final 㺴:Landroid/text/TextWatcher;

.field public final 䆀:Lcom/google/android/material/textfield/TextInputLayout$ᆻ;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    invoke-direct {p0, p1}, L㺴/㚬/உ/䂻/㖆/ḓ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance p1, L㺴/㚬/உ/䂻/㖆/ℓ$உ;

    invoke-direct {p1, p0}, L㺴/㚬/உ/䂻/㖆/ℓ$உ;-><init>(L㺴/㚬/உ/䂻/㖆/ℓ;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/ℓ;->㺴:Landroid/text/TextWatcher;

    new-instance p1, L㺴/㚬/உ/䂻/㖆/ℓ$䂻;

    invoke-direct {p1, p0}, L㺴/㚬/உ/䂻/㖆/ℓ$䂻;-><init>(L㺴/㚬/உ/䂻/㖆/ℓ;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/ℓ;->ḓ:Lcom/google/android/material/textfield/TextInputLayout$䆀;

    new-instance p1, L㺴/㚬/உ/䂻/㖆/ℓ$㚬;

    invoke-direct {p1, p0}, L㺴/㚬/உ/䂻/㖆/ℓ$㚬;-><init>(L㺴/㚬/உ/䂻/㖆/ℓ;)V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/ℓ;->䆀:Lcom/google/android/material/textfield/TextInputLayout$ᆻ;

    return-void
.end method

.method public static synthetic ḓ(L㺴/㚬/உ/䂻/㖆/ℓ;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㖆/ℓ;->㺴:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public static synthetic 㺴(L㺴/㚬/உ/䂻/㖆/ℓ;)Z
    .locals 0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㖆/ℓ;->䆀()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public உ()V
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->䂻:Landroid/content/Context;

    sget v2, L㺴/㚬/உ/䂻/ḓ;->உ:I

    invoke-static {v1, v2}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, L㺴/㚬/உ/䂻/ㄏ;->ᓭ:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, L㺴/㚬/உ/䂻/㖆/ℓ$㺴;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㖆/ℓ$㺴;-><init>(L㺴/㚬/உ/䂻/㖆/ℓ;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/ℓ;->ḓ:Lcom/google/android/material/textfield/TextInputLayout$䆀;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->㚬(Lcom/google/android/material/textfield/TextInputLayout$䆀;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/ℓ;->䆀:Lcom/google/android/material/textfield/TextInputLayout$ᆻ;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->㺴(Lcom/google/android/material/textfield/TextInputLayout$ᆻ;)V

    return-void
.end method

.method public final 䆀()Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
