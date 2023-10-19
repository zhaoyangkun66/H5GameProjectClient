.class public Lorg/games/app/MainActivity$ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/games/app/MainActivity;->㧦(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Lorg/games/app/MainActivity;

.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/games/app/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/games/app/MainActivity$ḓ;->㚬:Lorg/games/app/MainActivity;

    iput-object p2, p0, Lorg/games/app/MainActivity$ḓ;->䂻:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/games/app/MainActivity$ḓ;->㚬:Lorg/games/app/MainActivity;

    iget-object p1, p1, Lorg/games/app/MainActivity;->䆀:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/games/app/MainActivity$ḓ;->㚬:Lorg/games/app/MainActivity;

    invoke-static {p1}, Lorg/games/app/MainActivity;->ᆻ(Lorg/games/app/MainActivity;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lorg/games/app/MainActivity$ḓ;->䂻:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
