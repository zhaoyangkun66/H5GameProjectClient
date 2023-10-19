.class public L㚬/㧦/㺴/㚬$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/㚬;->䆀(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/㧦/㺴/ᾦ$ḓ;

.field public final synthetic 㺴:L㚬/㧦/㺴/㚬;

.field public final synthetic 䂻:Ljava/util/List;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/㚬;Ljava/util/List;L㚬/㧦/㺴/ᾦ$ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/㚬$䂻;->㺴:L㚬/㧦/㺴/㚬;

    iput-object p2, p0, L㚬/㧦/㺴/㚬$䂻;->䂻:Ljava/util/List;

    iput-object p3, p0, L㚬/㧦/㺴/㚬$䂻;->㚬:L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㚬/㧦/㺴/㚬$䂻;->䂻:Ljava/util/List;

    iget-object v1, p0, L㚬/㧦/㺴/㚬$䂻;->㚬:L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/㧦/㺴/㚬$䂻;->䂻:Ljava/util/List;

    iget-object v1, p0, L㚬/㧦/㺴/㚬$䂻;->㚬:L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, L㚬/㧦/㺴/㚬$䂻;->㺴:L㚬/㧦/㺴/㚬;

    iget-object v1, p0, L㚬/㧦/㺴/㚬$䂻;->㚬:L㚬/㧦/㺴/ᾦ$ḓ;

    invoke-virtual {v0, v1}, L㚬/㧦/㺴/㚬;->㭲(L㚬/㧦/㺴/ᾦ$ḓ;)V

    :cond_0
    return-void
.end method
