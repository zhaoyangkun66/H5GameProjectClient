.class public L㺴/㚬/உ/䂻/㖆/ℓ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$䆀;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㖆/ℓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/㖆/ℓ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/ℓ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/ℓ$䂻;->உ:L㺴/㚬/உ/䂻/㖆/ℓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/ℓ$䂻;->உ:L㺴/㚬/உ/䂻/㖆/ℓ;

    iget-object v2, p1, L㺴/㚬/உ/䂻/㖆/ḓ;->㚬:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/ℓ;->㺴(L㺴/㚬/உ/䂻/㖆/ℓ;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/ℓ$䂻;->உ:L㺴/㚬/உ/䂻/㖆/ℓ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/ℓ;->ḓ(L㺴/㚬/உ/䂻/㖆/ℓ;)Landroid/text/TextWatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/ℓ$䂻;->உ:L㺴/㚬/உ/䂻/㖆/ℓ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/ℓ;->ḓ(L㺴/㚬/உ/䂻/㖆/ℓ;)Landroid/text/TextWatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
