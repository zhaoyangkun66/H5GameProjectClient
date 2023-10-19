.class public L㚬/䂻/ბ/㢏$உ;
.super L㚬/䂻/ბ/ᰘ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䂻/ბ/㢏;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㧦:L㚬/䂻/ბ/㢏$ḓ;

.field public final synthetic 㹖:L㚬/䂻/ბ/㢏;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㢏;Landroid/view/View;L㚬/䂻/ბ/㢏$ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㢏$உ;->㹖:L㚬/䂻/ბ/㢏;

    iput-object p3, p0, L㚬/䂻/ბ/㢏$உ;->㧦:L㚬/䂻/ბ/㢏$ḓ;

    invoke-direct {p0, p2}, L㚬/䂻/ბ/ᰘ;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public 㚬()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object v0, p0, L㚬/䂻/ბ/㢏$உ;->㹖:L㚬/䂻/ბ/㢏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㢏;->getInternalPopup()L㚬/䂻/ბ/㢏$ᆻ;

    move-result-object v0

    invoke-interface {v0}, L㚬/䂻/ბ/㢏$ᆻ;->䂻()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㢏$உ;->㹖:L㚬/䂻/ბ/㢏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㢏;->䂻()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public 䂻()L㚬/䂻/ᓭ/ಫ/ბ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏$உ;->㧦:L㚬/䂻/ბ/㢏$ḓ;

    return-object v0
.end method
