.class public abstract L㺴/㚬/உ/䂻/㖆/ḓ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public உ:Lcom/google/android/material/textfield/TextInputLayout;

.field public 㚬:Lcom/google/android/material/internal/CheckableImageButton;

.field public 䂻:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->䂻:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object p1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/ḓ;->㚬:Lcom/google/android/material/internal/CheckableImageButton;

    return-void
.end method


# virtual methods
.method public abstract உ()V
.end method

.method public 㚬()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 䂻(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
