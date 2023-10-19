.class public L㚬/ḙ/ಋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ḙ/ᾦ;


# instance fields
.field public final உ:Landroid/view/ViewOverlay;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iput-object p1, p0, L㚬/ḙ/ಋ;->உ:Landroid/view/ViewOverlay;

    return-void
.end method


# virtual methods
.method public 㺴(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/ಋ;->உ:Landroid/view/ViewOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public 䂻(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/ಋ;->உ:Landroid/view/ViewOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
