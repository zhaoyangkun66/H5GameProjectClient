.class public L䆀/䂻/㚬/உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L䆀/䂻/㚬/உ$㺴;,
        L䆀/䂻/㚬/உ$㚬;,
        L䆀/䂻/㚬/உ$䂻;
    }
.end annotation


# direct methods
.method public static உ(Landroid/content/Context;)L䆀/䂻/㚬/உ$䂻;
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "Ag4MTwAPBRMOCAVPFwQPBQgPBg=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v0, L䆀/䂻/㚬/உ$㚬;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, L䆀/䂻/㚬/உ$㚬;-><init>(L䆀/䂻/㚬/உ$உ;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "Ag4MTwYODgYNBE8ADwUTDggFTwYMEk8ABRJPCAUEDxUIBwgEE08SBBMXCAIETzI1IDM1"

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "Ag4MTwYODgYNBE8ADwUTDggFTwYMEg=="

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, L䆀/䂻/㚬/உ$㺴;

    invoke-virtual {v0}, L䆀/䂻/㚬/உ$㚬;->உ()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v1, v3}, L䆀/䂻/㚬/உ$㺴;-><init>(Landroid/os/IBinder;)V

    new-instance v3, L䆀/䂻/㚬/உ$䂻;

    invoke-virtual {v1}, L䆀/䂻/㚬/உ$㺴;->ർ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, L䆀/䂻/㚬/உ$㺴;->㖆(Z)Z

    move-result v1

    invoke-direct {v3, v4, v1}, L䆀/䂻/㚬/உ$䂻;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Jg4OBg0EQTENABhBAg4PDwQCFQgOD0EHAAgNBAU="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "IgAPDw4VQQMEQQIADQ0EBUEHEw4MQRUJBEEMAAgPQRUJEwQABQ=="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
