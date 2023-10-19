.class public L㺴/㚬/உ/䂻/㢏/ℓ$䆀;
.super L㚬/ℓ/ἥ/உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ(Landroid/view/View;L㺴/㚬/உ/䂻/㢏/ཇ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㺴:L㺴/㚬/உ/䂻/㢏/ℓ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/ℓ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$䆀;->㺴:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-direct {p0}, L㚬/ℓ/ἥ/உ;-><init>()V

    return-void
.end method


# virtual methods
.method public ᆻ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V
    .locals 1

    invoke-super {p0, p1, p2}, L㚬/ℓ/ἥ/உ;->ᆻ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$䆀;->㺴:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->ℓ(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$䆀;->㺴:L㺴/㚬/உ/䂻/㢏/ℓ;

    sget v0, L㺴/㚬/உ/䂻/ㄏ;->ཇ:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$䆀;->㺴:L㺴/㚬/உ/䂻/㢏/ℓ;

    sget v0, L㺴/㚬/உ/䂻/ㄏ;->㹖:I

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->䋡(Ljava/lang/CharSequence;)V

    return-void
.end method
