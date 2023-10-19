.class public L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;
.super Landroidx/recyclerview/widget/RecyclerView$ḙ;
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
.field public final synthetic உ:L㺴/㚬/உ/䂻/㢏/ཇ;

.field public final synthetic 㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

.field public final synthetic 䂻:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/ℓ;L㺴/㚬/உ/䂻/㢏/ཇ;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    iput-object p2, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;->உ:L㺴/㚬/உ/䂻/㢏/ཇ;

    iput-object p3, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;->䂻:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ḙ;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    if-nez p2, :cond_1

    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;->䂻:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x800

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public 䂻(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->㲝()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->წ()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->വ()I

    move-result p1

    :goto_0
    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    iget-object p3, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;->உ:L㺴/㚬/உ/䂻/㢏/ཇ;

    invoke-virtual {p3, p1}, L㺴/㚬/உ/䂻/㢏/ཇ;->㢏(I)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p3

    invoke-static {p2, p3}, L㺴/㚬/உ/䂻/㢏/ℓ;->ㄏ(L㺴/㚬/உ/䂻/㢏/ℓ;L㺴/㚬/உ/䂻/㢏/㹖;)L㺴/㚬/உ/䂻/㢏/㹖;

    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;->䂻:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ᆻ;->உ:L㺴/㚬/உ/䂻/㢏/ཇ;

    invoke-virtual {p3, p1}, L㺴/㚬/உ/䂻/㢏/ཇ;->ม(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
