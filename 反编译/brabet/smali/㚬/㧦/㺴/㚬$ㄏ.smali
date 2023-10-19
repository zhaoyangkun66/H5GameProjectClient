.class public L㚬/㧦/㺴/㚬$ㄏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/㚬;->㲧(Ljava/util/List;ZL㚬/㧦/㺴/ᾦ$ḓ;L㚬/㧦/㺴/ᾦ$ḓ;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/㚬;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p2, p0, L㚬/㧦/㺴/㚬$ㄏ;->䂻:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㚬/㧦/㺴/㚬$ㄏ;->䂻:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v1}, L㚬/㧦/㺴/ม;->ᾦ(Ljava/util/ArrayList;I)V

    return-void
.end method
