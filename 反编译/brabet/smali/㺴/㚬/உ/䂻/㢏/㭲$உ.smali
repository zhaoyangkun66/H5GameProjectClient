.class public L㺴/㚬/உ/䂻/㢏/㭲$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㢏/㭲;->㢏(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㺴/㚬/உ/䂻/㢏/㭲;

.field public final synthetic 䂻:I


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/㭲;I)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/㭲$உ;->㚬:L㺴/㚬/உ/䂻/㢏/㭲;

    iput p2, p0, L㺴/㚬/உ/䂻/㢏/㭲$உ;->䂻:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, L㺴/㚬/உ/䂻/㢏/㭲$உ;->䂻:I

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㭲$உ;->㚬:L㺴/㚬/உ/䂻/㢏/㭲;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/㭲;->㖪(L㺴/㚬/உ/䂻/㢏/㭲;)L㺴/㚬/உ/䂻/㢏/ℓ;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->ཇ()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    iget v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->㺴:I

    invoke-static {p1, v0}, L㺴/㚬/உ/䂻/㢏/㹖;->㧦(II)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㭲$உ;->㚬:L㺴/㚬/உ/䂻/㢏/㭲;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㢏/㭲;->㖪(L㺴/㚬/உ/䂻/㢏/㭲;)L㺴/㚬/உ/䂻/㢏/ℓ;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->ḙ(L㺴/㚬/உ/䂻/㢏/㹖;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/㭲$உ;->㚬:L㺴/㚬/உ/䂻/㢏/㭲;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/㭲;->㖪(L㺴/㚬/உ/䂻/㢏/㭲;)L㺴/㚬/உ/䂻/㢏/ℓ;

    move-result-object p1

    sget-object v0, L㺴/㚬/உ/䂻/㢏/ℓ$㧦;->䂻:L㺴/㚬/உ/䂻/㢏/ℓ$㧦;

    invoke-virtual {p1, v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->㖪(L㺴/㚬/உ/䂻/㢏/ℓ$㧦;)V

    return-void
.end method
