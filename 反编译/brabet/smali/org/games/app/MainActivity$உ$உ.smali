.class public Lorg/games/app/MainActivity$உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/games/app/MainActivity$உ;->உ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Lorg/games/app/MainActivity$உ;

.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/games/app/MainActivity$உ;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/games/app/MainActivity$உ$உ;->㚬:Lorg/games/app/MainActivity$உ;

    iput-object p2, p0, Lorg/games/app/MainActivity$உ$உ;->䂻:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/games/app/MainActivity$உ$உ;->䂻:Ljava/lang/String;

    const-string v1, "CVQ0Ew0="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "DhMIBA8VABUIDg8="

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CQ=="

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/games/app/MainActivity$உ$உ;->㚬:Lorg/games/app/MainActivity$உ;

    iget-object v1, v1, Lorg/games/app/MainActivity$உ;->உ:Lorg/games/app/MainActivity;

    const/4 v2, 0x6

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/games/app/MainActivity$உ$உ;->㚬:Lorg/games/app/MainActivity$உ;

    iget-object v1, v1, Lorg/games/app/MainActivity$உ;->உ:Lorg/games/app/MainActivity;

    const/4 v2, 0x7

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v1, p0, Lorg/games/app/MainActivity$உ$உ;->㚬:Lorg/games/app/MainActivity$உ;

    iget-object v1, v1, Lorg/games/app/MainActivity$உ;->உ:Lorg/games/app/MainActivity;

    invoke-static {v1}, Lorg/games/app/MainActivity;->உ(Lorg/games/app/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lorg/games/app/MainActivity$உ$உ;->㚬:Lorg/games/app/MainActivity$உ;

    iget-object v1, v1, Lorg/games/app/MainActivity$உ;->உ:Lorg/games/app/MainActivity;

    invoke-static {v1, v0}, Lorg/games/app/MainActivity;->䂻(Lorg/games/app/MainActivity;Ljava/lang/String;)V

    return-void
.end method
