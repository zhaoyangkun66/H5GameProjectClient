.class public L㺴/㚬/உ/䂻/㢏/ℓ$ಫ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㢏/ℓ;->ಫ(Landroid/view/View;L㺴/㚬/உ/䂻/㢏/ཇ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

.field public final synthetic 䂻:L㺴/㚬/உ/䂻/㢏/ཇ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/ℓ;L㺴/㚬/உ/䂻/㢏/ཇ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ಫ;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    iput-object p2, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ಫ;->䂻:L㺴/㚬/உ/䂻/㢏/ཇ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ಫ;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->㲝()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->വ()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ಫ;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$ಫ;->䂻:L㺴/㚬/உ/䂻/㢏/ཇ;

    invoke-virtual {v1, p1}, L㺴/㚬/உ/䂻/㢏/ཇ;->㢏(I)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p1

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->ḙ(L㺴/㚬/உ/䂻/㢏/㹖;)V

    :cond_0
    return-void
.end method
