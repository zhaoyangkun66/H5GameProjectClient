.class public final L㚬/ℓ/ἥ/ᾦ/உ;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field public final 㚬:L㚬/ℓ/ἥ/ᾦ/㚬;

.field public final 㺴:I

.field public final 䂻:I


# direct methods
.method public constructor <init>(IL㚬/ℓ/ἥ/ᾦ/㚬;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, L㚬/ℓ/ἥ/ᾦ/உ;->䂻:I

    iput-object p2, p0, L㚬/ℓ/ἥ/ᾦ/உ;->㚬:L㚬/ℓ/ἥ/ᾦ/㚬;

    iput p3, p0, L㚬/ℓ/ἥ/ᾦ/உ;->㺴:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, L㚬/ℓ/ἥ/ᾦ/உ;->䂻:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, L㚬/ℓ/ἥ/ᾦ/உ;->㚬:L㚬/ℓ/ἥ/ᾦ/㚬;

    iget v1, p0, L㚬/ℓ/ἥ/ᾦ/உ;->㺴:I

    invoke-virtual {v0, v1, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->Ԁ(ILandroid/os/Bundle;)Z

    return-void
.end method
