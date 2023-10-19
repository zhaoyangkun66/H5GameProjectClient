.class public L㚬/䂻/ბ/㢏$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ბ/㢏$ᆻ;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㢏;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u36ac"
.end annotation


# instance fields
.field public final synthetic ḓ:L㚬/䂻/ბ/㢏;

.field public 㚬:Landroid/widget/ListAdapter;

.field public 㺴:Ljava/lang/CharSequence;

.field public 䂻:L㚬/䂻/㧦/䂻;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㢏;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㢏$㚬;->ḓ:L㚬/䂻/ბ/㢏;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏$㚬;->䂻:L㚬/䂻/㧦/䂻;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ბ/㢏$㚬;->䂻:L㚬/䂻/㧦/䂻;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, L㚬/䂻/ბ/㢏$㚬;->ḓ:L㚬/䂻/ბ/㢏;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, L㚬/䂻/ბ/㢏$㚬;->ḓ:L㚬/䂻/ბ/㢏;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/䂻/ბ/㢏$㚬;->ḓ:L㚬/䂻/ბ/㢏;

    const/4 v0, 0x0

    iget-object v1, p0, L㚬/䂻/ბ/㢏$㚬;->㚬:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ბ/㢏$㚬;->dismiss()V

    return-void
.end method

.method public ಫ()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ཇ(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ბ(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ᓭ(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㢏$㚬;->㚬:Landroid/widget/ListAdapter;

    return-void
.end method

.method public ḓ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ἥ(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㢏$㚬;->㺴:Ljava/lang/CharSequence;

    return-void
.end method

.method public ℓ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 㚬(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public 㧦()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏$㚬;->㺴:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public 㺴(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public 䂻()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㢏$㚬;->䂻:L㚬/䂻/㧦/䂻;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 䆀(II)V
    .locals 3

    iget-object v0, p0, L㚬/䂻/ბ/㢏$㚬;->㚬:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, L㚬/䂻/㧦/䂻$உ;

    iget-object v1, p0, L㚬/䂻/ბ/㢏$㚬;->ḓ:L㚬/䂻/ბ/㢏;

    invoke-virtual {v1}, L㚬/䂻/ბ/㢏;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, L㚬/䂻/㧦/䂻$உ;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, L㚬/䂻/ბ/㢏$㚬;->㺴:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, L㚬/䂻/㧦/䂻$உ;->ℓ(Ljava/lang/CharSequence;)L㚬/䂻/㧦/䂻$உ;

    :cond_1
    iget-object v1, p0, L㚬/䂻/ბ/㢏$㚬;->㚬:Landroid/widget/ListAdapter;

    iget-object v2, p0, L㚬/䂻/ბ/㢏$㚬;->ḓ:L㚬/䂻/ბ/㢏;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, L㚬/䂻/㧦/䂻$உ;->ᆻ(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)L㚬/䂻/㧦/䂻$உ;

    invoke-virtual {v0}, L㚬/䂻/㧦/䂻$உ;->உ()L㚬/䂻/㧦/䂻;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ბ/㢏$㚬;->䂻:L㚬/䂻/㧦/䂻;

    invoke-virtual {v0}, L㚬/䂻/㧦/䂻;->ℓ()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    :cond_2
    iget-object p1, p0, L㚬/䂻/ბ/㢏$㚬;->䂻:L㚬/䂻/㧦/䂻;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
