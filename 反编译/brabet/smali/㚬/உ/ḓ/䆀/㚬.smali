.class public final L㚬/உ/ḓ/䆀/㚬;
.super L㚬/உ/ḓ/䆀/உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u36ac/\u0b89/\u1e13/\u4180/\u0b89<",
        "Landroid/content/Intent;",
        "L\u36ac/\u0b89/\u1e13/\u0b89;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㚬/உ/ḓ/䆀/உ;-><init>()V

    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    return-object p2
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, L㚬/உ/ḓ/䆀/㚬;->createIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    return-object p2
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, L㚬/உ/ḓ/䆀/㚬;->உ(ILandroid/content/Intent;)L㚬/உ/ḓ/உ;

    move-result-object p1

    return-object p1
.end method

.method public உ(ILandroid/content/Intent;)L㚬/உ/ḓ/உ;
    .locals 1

    new-instance v0, L㚬/உ/ḓ/உ;

    invoke-direct {v0, p1, p2}, L㚬/உ/ḓ/உ;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method
