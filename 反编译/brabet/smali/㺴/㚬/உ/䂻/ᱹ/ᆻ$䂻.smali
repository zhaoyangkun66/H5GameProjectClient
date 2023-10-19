.class public L㺴/㚬/உ/䂻/ᱹ/ᆻ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㺴/㚬/உ/䂻/ᱹ/㧦$㚬;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/ᱹ/ᆻ;->ℓ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:F


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ᱹ/ᆻ;F)V
    .locals 0

    iput p2, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$䂻;->உ:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㺴/㚬/உ/䂻/ᱹ/㚬;)L㺴/㚬/உ/䂻/ᱹ/㚬;
    .locals 2

    instance-of v0, p1, L㺴/㚬/உ/䂻/ᱹ/ㄏ;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, L㺴/㚬/உ/䂻/ᱹ/䂻;

    iget v1, p0, L㺴/㚬/உ/䂻/ᱹ/ᆻ$䂻;->உ:F

    invoke-direct {v0, v1, p1}, L㺴/㚬/உ/䂻/ᱹ/䂻;-><init>(FL㺴/㚬/உ/䂻/ᱹ/㚬;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
