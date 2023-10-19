.class public final Lcom/google/android/material/textfield/TextInputLayout$ℓ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout$ℓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/google/android/material/textfield/TextInputLayout$\u2113;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout$ℓ$உ;->உ(Landroid/os/Parcel;)Lcom/google/android/material/textfield/TextInputLayout$ℓ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$ℓ$உ;->䂻(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/textfield/TextInputLayout$ℓ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout$ℓ$உ;->㚬(I)[Lcom/google/android/material/textfield/TextInputLayout$ℓ;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/os/Parcel;)Lcom/google/android/material/textfield/TextInputLayout$ℓ;
    .locals 2

    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$ℓ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout$ℓ;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public 㚬(I)[Lcom/google/android/material/textfield/TextInputLayout$ℓ;
    .locals 0

    new-array p1, p1, [Lcom/google/android/material/textfield/TextInputLayout$ℓ;

    return-object p1
.end method

.method public 䂻(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/textfield/TextInputLayout$ℓ;
    .locals 1

    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$ℓ;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$ℓ;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method
