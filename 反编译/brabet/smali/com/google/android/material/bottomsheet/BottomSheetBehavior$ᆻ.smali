.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u11bb"
.end annotation


# instance fields
.field public final synthetic ḓ:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field public 㚬:Z

.field public 㺴:I

.field public final 䂻:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;->ḓ:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;->䂻:Landroid/view/View;

    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;->㺴:I

    return-void
.end method

.method public static synthetic உ(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;->㚬:Z

    return p0
.end method

.method public static synthetic 䂻(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;->㚬:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;->ḓ:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->㢏:L㚬/ಫ/䂻/㚬;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, L㚬/ಫ/䂻/㚬;->㧦(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;->䂻:Landroid/view/View;

    invoke-static {v0, p0}, L㚬/ℓ/ἥ/㭲;->ᇿ(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;->ḓ:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;->㺴:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ග(I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$ᆻ;->㚬:Z

    return-void
.end method
