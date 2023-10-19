.class public abstract L䂻/உ/䂻/䂻/䆀/䂻$உ;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements L䂻/உ/䂻/䂻/䆀/䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䂻/உ/䂻/䂻/䆀/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u0b89"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L䂻/உ/䂻/䂻/䆀/䂻$உ$உ;
    }
.end annotation


# direct methods
.method public static ർ(Landroid/os/IBinder;)L䂻/உ/䂻/䂻/䆀/䂻;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.v4.media.session.IMediaSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, L䂻/உ/䂻/䂻/䆀/䂻;

    if-eqz v1, :cond_1

    check-cast v0, L䂻/உ/䂻/䂻/䆀/䂻;

    return-object v0

    :cond_1
    new-instance v0, L䂻/உ/䂻/䂻/䆀/䂻$உ$உ;

    invoke-direct {v0, p0}, L䂻/உ/䂻/䂻/䆀/䂻$உ$உ;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
