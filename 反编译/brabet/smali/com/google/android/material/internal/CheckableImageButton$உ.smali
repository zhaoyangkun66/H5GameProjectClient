.class public Lcom/google/android/material/internal/CheckableImageButton$உ;
.super L㚬/ℓ/ἥ/உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㺴:Lcom/google/android/material/internal/CheckableImageButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$உ;->㺴:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-direct {p0}, L㚬/ℓ/ἥ/உ;-><init>()V

    return-void
.end method


# virtual methods
.method public ᆻ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V
    .locals 0

    invoke-super {p0, p1, p2}, L㚬/ℓ/ἥ/உ;->ᆻ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V

    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$உ;->㺴:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->உ()Z

    move-result p1

    invoke-virtual {p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->㟘(Z)V

    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$உ;->㺴:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->ᣝ(Z)V

    return-void
.end method

.method public 䆀(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, L㚬/ℓ/ἥ/உ;->䆀(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$உ;->㺴:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method
