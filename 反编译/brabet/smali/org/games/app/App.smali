.class public Lorg/games/app/App;
.super Landroid/app/Application;
.source ""


# static fields
.field public static 䂻:Lorg/games/app/App;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static callJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, L䆀/உ/㚬/㚬;->㚬()L䆀/உ/㚬/㚬;

    move-result-object v0

    invoke-virtual {v0, p0}, L䆀/உ/㚬/㚬;->㺴(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, L䆀/உ/㚬/㚬;->㚬()L䆀/உ/㚬/㚬;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, L䆀/உ/㚬/㚬;->䂻(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, L䆀/䂻/㚬/䆀;->ཇ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static 䂻()Lorg/games/app/App;
    .locals 1

    sget-object v0, Lorg/games/app/App;->䂻:Lorg/games/app/App;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lorg/games/app/App;->䂻:Lorg/games/app/App;

    invoke-virtual {p0}, Lorg/games/app/App;->㚬()V

    invoke-virtual {p0, p0}, Lorg/games/app/App;->உ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final உ(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "AAIVCBcIFRg="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final 㚬()V
    .locals 0

    return-void
.end method
