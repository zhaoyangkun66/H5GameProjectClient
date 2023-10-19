.class public L㚬/㺴/䂻/䂻$䂻$ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㺴/䂻/䂻$䂻;->ㄬ(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ḓ:Landroid/os/Bundle;

.field public final synthetic 㚬:Landroid/net/Uri;

.field public final synthetic 㺴:Z

.field public final synthetic 䂻:I

.field public final synthetic 䆀:L㚬/㺴/䂻/䂻$䂻;


# direct methods
.method public constructor <init>(L㚬/㺴/䂻/䂻$䂻;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, L㚬/㺴/䂻/䂻$䂻$ḓ;->䆀:L㚬/㺴/䂻/䂻$䂻;

    iput p2, p0, L㚬/㺴/䂻/䂻$䂻$ḓ;->䂻:I

    iput-object p3, p0, L㚬/㺴/䂻/䂻$䂻$ḓ;->㚬:Landroid/net/Uri;

    iput-boolean p4, p0, L㚬/㺴/䂻/䂻$䂻$ḓ;->㺴:Z

    iput-object p5, p0, L㚬/㺴/䂻/䂻$䂻$ḓ;->ḓ:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, L㚬/㺴/䂻/䂻$䂻$ḓ;->䆀:L㚬/㺴/䂻/䂻$䂻;

    iget-object v0, v0, L㚬/㺴/䂻/䂻$䂻;->䂻:L㚬/㺴/䂻/உ;

    iget v1, p0, L㚬/㺴/䂻/䂻$䂻$ḓ;->䂻:I

    iget-object v2, p0, L㚬/㺴/䂻/䂻$䂻$ḓ;->㚬:Landroid/net/Uri;

    iget-boolean v3, p0, L㚬/㺴/䂻/䂻$䂻$ḓ;->㺴:Z

    iget-object v4, p0, L㚬/㺴/䂻/䂻$䂻$ḓ;->ḓ:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, L㚬/㺴/䂻/உ;->ḓ(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
