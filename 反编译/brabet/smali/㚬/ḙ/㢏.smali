.class public L㚬/ḙ/㢏;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ḙ/ม;


# instance fields
.field public final உ:Landroid/view/ViewGroupOverlay;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iput-object p1, p0, L㚬/ḙ/㢏;->உ:Landroid/view/ViewGroupOverlay;

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/㢏;->உ:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method

.method public 㚬(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/㢏;->உ:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public 㺴(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/㢏;->உ:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public 䂻(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/㢏;->உ:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
