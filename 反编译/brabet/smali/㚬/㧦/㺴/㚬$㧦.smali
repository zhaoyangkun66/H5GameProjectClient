.class public L㚬/㧦/㺴/㚬$㧦;
.super L㚬/㧦/㺴/㚬$㹖;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u39e6"
.end annotation


# instance fields
.field public 㚬:Z

.field public 㺴:L㚬/㧦/㺴/ḓ$㺴;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ᾦ$ḓ;L㚬/ℓ/ㄏ/உ;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/㧦/㺴/㚬$㹖;-><init>(L㚬/㧦/㺴/ᾦ$ḓ;L㚬/ℓ/ㄏ/உ;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/㧦/㺴/㚬$㧦;->㚬:Z

    return-void
.end method


# virtual methods
.method public ḓ(Landroid/content/Context;)L㚬/㧦/㺴/ḓ$㺴;
    .locals 4

    iget-boolean v0, p0, L㚬/㧦/㺴/㚬$㧦;->㚬:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, L㚬/㧦/㺴/㚬$㧦;->㺴:L㚬/㧦/㺴/ḓ$㺴;

    return-object p1

    :cond_0
    invoke-virtual {p0}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/㧦/㺴/ᾦ$ḓ;->䆀()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, L㚬/㧦/㺴/㚬$㹖;->䂻()L㚬/㧦/㺴/ᾦ$ḓ;

    move-result-object v1

    invoke-virtual {v1}, L㚬/㧦/㺴/ᾦ$ḓ;->ḓ()L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    move-result-object v1

    sget-object v2, L㚬/㧦/㺴/ᾦ$ḓ$㚬;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$㚬;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, L㚬/㧦/㺴/ḓ;->䂻(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)L㚬/㧦/㺴/ḓ$㺴;

    move-result-object p1

    iput-object p1, p0, L㚬/㧦/㺴/㚬$㧦;->㺴:L㚬/㧦/㺴/ḓ$㺴;

    iput-boolean v3, p0, L㚬/㧦/㺴/㚬$㧦;->㚬:Z

    return-object p1
.end method
