.class public Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;
.super L㚬/ಫ/உ/உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u11bb"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar$\u11bb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ḓ:Z

.field public 㺴:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ$உ;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ$உ;-><init>()V

    sput-object v0, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1, p2}, L㚬/ಫ/உ/உ;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;->㺴:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;->ḓ:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/ಫ/உ/உ;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, L㚬/ಫ/உ/உ;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;->㺴:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$ᆻ;->ḓ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
