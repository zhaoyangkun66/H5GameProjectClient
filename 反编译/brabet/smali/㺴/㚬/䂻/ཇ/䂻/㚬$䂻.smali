.class public final L㺴/㚬/䂻/ཇ/䂻/㚬$䂻;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/䂻/ཇ/䂻/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u40bb"
.end annotation


# instance fields
.field public final உ:I

.field public final 䂻:[L㺴/㚬/䂻/ཇ/䂻/㚬$உ;


# direct methods
.method public varargs constructor <init>(I[L㺴/㚬/䂻/ཇ/䂻/㚬$உ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, L㺴/㚬/䂻/ཇ/䂻/㚬$䂻;->உ:I

    iput-object p2, p0, L㺴/㚬/䂻/ཇ/䂻/㚬$䂻;->䂻:[L㺴/㚬/䂻/ཇ/䂻/㚬$உ;

    return-void
.end method


# virtual methods
.method public உ()[L㺴/㚬/䂻/ཇ/䂻/㚬$உ;
    .locals 1

    iget-object v0, p0, L㺴/㚬/䂻/ཇ/䂻/㚬$䂻;->䂻:[L㺴/㚬/䂻/ཇ/䂻/㚬$உ;

    return-object v0
.end method

.method public 㚬()I
    .locals 5

    iget-object v0, p0, L㺴/㚬/䂻/ཇ/䂻/㚬$䂻;->䂻:[L㺴/㚬/䂻/ཇ/䂻/㚬$உ;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, L㺴/㚬/䂻/ཇ/䂻/㚬$உ;->உ()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public 㺴()I
    .locals 2

    iget v0, p0, L㺴/㚬/䂻/ཇ/䂻/㚬$䂻;->உ:I

    invoke-virtual {p0}, L㺴/㚬/䂻/ཇ/䂻/㚬$䂻;->㚬()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public 䂻()I
    .locals 1

    iget v0, p0, L㺴/㚬/䂻/ཇ/䂻/㚬$䂻;->உ:I

    return v0
.end method
