.class public L㺴/㚬/உ/䂻/㢏/ℓ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㢏/ℓ;->㭲(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

.field public final synthetic 䂻:I


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/ℓ;I)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$உ;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    iput p2, p0, L㺴/㚬/உ/䂻/㢏/ℓ$உ;->䂻:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ℓ$உ;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->㚬(L㺴/㚬/உ/䂻/㢏/ℓ;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, L㺴/㚬/உ/䂻/㢏/ℓ$உ;->䂻:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
