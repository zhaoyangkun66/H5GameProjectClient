.class public Landroidx/appcompat/app/AlertController$䆀$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$䆀;->䂻(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Landroidx/appcompat/app/AlertController$䆀;

.field public final synthetic 䂻:Landroidx/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AlertController$䆀;Landroidx/appcompat/app/AlertController;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$䆀$㚬;->㚬:Landroidx/appcompat/app/AlertController$䆀;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController$䆀$㚬;->䂻:Landroidx/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroidx/appcompat/app/AlertController$䆀$㚬;->㚬:Landroidx/appcompat/app/AlertController$䆀;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$䆀;->㲧:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Landroidx/appcompat/app/AlertController$䆀$㚬;->䂻:Landroidx/appcompat/app/AlertController;

    iget-object p2, p2, Landroidx/appcompat/app/AlertController;->䂻:L㚬/䂻/㧦/䆀;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController$䆀$㚬;->㚬:Landroidx/appcompat/app/AlertController$䆀;

    iget-boolean p1, p1, Landroidx/appcompat/app/AlertController$䆀;->ᱹ:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/AlertController$䆀$㚬;->䂻:Landroidx/appcompat/app/AlertController;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->䂻:L㚬/䂻/㧦/䆀;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
