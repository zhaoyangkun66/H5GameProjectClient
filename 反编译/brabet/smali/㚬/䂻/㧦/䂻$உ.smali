.class public L㚬/䂻/㧦/䂻$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# instance fields
.field public final உ:Landroidx/appcompat/app/AlertController$䆀;

.field public final 䂻:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, L㚬/䂻/㧦/䂻;->ㄏ(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, L㚬/䂻/㧦/䂻$உ;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/app/AlertController$䆀;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, L㚬/䂻/㧦/䂻;->ㄏ(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$䆀;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iput p2, p0, L㚬/䂻/㧦/䂻$உ;->䂻:I

    return-void
.end method


# virtual methods
.method public உ()L㚬/䂻/㧦/䂻;
    .locals 3

    new-instance v0, L㚬/䂻/㧦/䂻;

    iget-object v1, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$䆀;->உ:Landroid/content/Context;

    iget v2, p0, L㚬/䂻/㧦/䂻$உ;->䂻:I

    invoke-direct {v0, v1, v2}, L㚬/䂻/㧦/䂻;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iget-object v2, v0, L㚬/䂻/㧦/䂻;->㺴:Landroidx/appcompat/app/AlertController;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertController$䆀;->உ(Landroidx/appcompat/app/AlertController;)V

    iget-object v1, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$䆀;->㞘:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$䆀;->㞘:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$䆀;->㭲:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$䆀;->ḙ:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$䆀;->㖪:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public ᆻ(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)L㚬/䂻/㧦/䂻$உ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$䆀;->ม:Landroid/widget/ListAdapter;

    iput-object p3, v0, Landroidx/appcompat/app/AlertController$䆀;->㲧:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Landroidx/appcompat/app/AlertController$䆀;->㥁:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$䆀;->ᱹ:Z

    return-object p0
.end method

.method public ḓ(Landroid/graphics/drawable/Drawable;)L㚬/䂻/㧦/䂻$உ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$䆀;->㺴:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public ℓ(Ljava/lang/CharSequence;)L㚬/䂻/㧦/䂻$உ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$䆀;->䆀:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public 㚬(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)L㚬/䂻/㧦/䂻$உ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$䆀;->ม:Landroid/widget/ListAdapter;

    iput-object p2, v0, Landroidx/appcompat/app/AlertController$䆀;->㲧:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public 㺴(Landroid/view/View;)L㚬/䂻/㧦/䂻$உ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$䆀;->ᆻ:Landroid/view/View;

    return-object p0
.end method

.method public 䂻()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$䆀;->உ:Landroid/content/Context;

    return-object v0
.end method

.method public 䆀(Landroid/content/DialogInterface$OnKeyListener;)L㚬/䂻/㧦/䂻$உ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/䂻$உ;->உ:Landroidx/appcompat/app/AlertController$䆀;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$䆀;->㖪:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method
