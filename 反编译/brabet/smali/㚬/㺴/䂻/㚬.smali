.class public final L㚬/㺴/䂻/㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/㺴/䂻/㚬$உ;
    }
.end annotation


# instance fields
.field public final உ:Landroid/content/Intent;

.field public final 䂻:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/㺴/䂻/㚬;->உ:Landroid/content/Intent;

    iput-object p2, p0, L㚬/㺴/䂻/㚬;->䂻:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public உ(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, L㚬/㺴/䂻/㚬;->உ:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, L㚬/㺴/䂻/㚬;->உ:Landroid/content/Intent;

    iget-object v0, p0, L㚬/㺴/䂻/㚬;->䂻:Landroid/os/Bundle;

    invoke-static {p1, p2, v0}, L㚬/ℓ/ḓ/உ;->ℓ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
