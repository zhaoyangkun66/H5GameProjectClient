.class public L㺴/㚬/உ/䂻/㖆/ℓ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㖆/ℓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㺴/㚬/உ/䂻/㖆/ℓ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/ℓ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/ℓ$உ;->䂻:L㺴/㚬/உ/䂻/㖆/ℓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/ℓ$உ;->䂻:L㺴/㚬/உ/䂻/㖆/ℓ;

    iget-object p2, p1, L㺴/㚬/உ/䂻/㖆/ḓ;->㚬:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/ℓ;->㺴(L㺴/㚬/உ/䂻/㖆/ℓ;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
