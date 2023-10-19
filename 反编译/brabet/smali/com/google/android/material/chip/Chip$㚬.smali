.class public Lcom/google/android/material/chip/Chip$㚬;
.super L㚬/ಫ/䂻/உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u36ac"
.end annotation


# instance fields
.field public final synthetic 㲝:Lcom/google/android/material/chip/Chip;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0, p2}, L㚬/ಫ/䂻/உ;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public Ԁ(IL㚬/ℓ/ἥ/ᾦ/㚬;)V
    .locals 6

    const-string v0, ""

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->ᣦ(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, L㺴/㚬/உ/䂻/ㄏ;->ᆻ:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, p1

    :cond_1
    aput-object v0, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-static {p1}, Lcom/google/android/material/chip/Chip;->䆀(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->ⵦ(Landroid/graphics/Rect;)V

    sget-object p1, L㚬/ℓ/ἥ/ᾦ/㚬$உ;->ḓ:L㚬/ℓ/ἥ/ᾦ/㚬$உ;

    invoke-virtual {p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->䂻(L㚬/ℓ/ἥ/ᾦ/㚬$உ;)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->ಇ(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v0}, L㚬/ℓ/ἥ/ᾦ/㚬;->ᣦ(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/android/material/chip/Chip;->ᆻ()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->ⵦ(Landroid/graphics/Rect;)V

    :goto_2
    return-void
.end method

.method public Խ(L㚬/ℓ/ἥ/ᾦ/㚬;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->㲝()Z

    move-result v0

    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/ᾦ/㚬;->㟘(Z)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/ᾦ/㚬;->ᣑ(Z)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->㲝()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "android.view.View"

    :goto_0
    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/ᾦ/㚬;->ᇿ(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->㲝()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.widget.CompoundButton"

    goto :goto_0

    :cond_2
    const-string v0, "android.widget.Button"

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/ᾦ/㚬;->ᨧ(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v0}, L㚬/ℓ/ἥ/ᾦ/㚬;->ᣦ(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public ڈ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->㚬(Lcom/google/android/material/chip/Chip;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->㞘()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public ർ(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->performClick()Z

    move-result p1

    return p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->㭲()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ỷ(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-static {p1, p2}, Lcom/google/android/material/chip/Chip;->ḓ(Lcom/google/android/material/chip/Chip;Z)Z

    iget-object p1, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public ᾦ(FF)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->㚬(Lcom/google/android/material/chip/Chip;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$㚬;->㲝:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->㺴(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
