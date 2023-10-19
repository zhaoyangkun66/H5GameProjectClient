.class public L䆀/䂻/䂻/䂻;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public உ:[Ljava/lang/String;

.field public 㚬:Landroid/net/Uri;

.field public 㺴:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public 䂻:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AA8FEw4IBU8RBBMMCBISCA4PTyIgLCQzIA=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "AA8FEw4IBU8RBBMMCBISCA4PTzMkICU+JDk1JDMvIC0+MjUuMyAmJA=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, L䆀/䂻/䂻/䂻;->உ:[Ljava/lang/String;

    iput-object p1, p0, L䆀/䂻/䂻/䂻;->䂻:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final உ([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, L䆀/䂻/䂻/䂻;->䂻:Landroid/app/Activity;

    invoke-static {v4, v3}, L㚬/ℓ/ḓ/உ;->உ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    nop

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public ḓ(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    iget-object p1, p0, L䆀/䂻/䂻/䂻;->㺴:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v0, p0, L䆀/䂻/䂻/䂻;->㚬:Landroid/net/Uri;

    iput-object v0, p0, L䆀/䂻/䂻/䂻;->㺴:Landroid/webkit/ValueCallback;

    :cond_0
    return-void

    :cond_1
    const/16 p2, 0x270f

    if-ne p1, p2, :cond_6

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-nez p3, :cond_2

    new-array p2, p2, [Landroid/net/Uri;

    iget-object p3, p0, L䆀/䂻/䂻/䂻;->㚬:Landroid/net/Uri;

    aput-object p3, p2, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    new-array v1, p2, [Landroid/net/Uri;

    :goto_0
    if-ge p1, p2, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    move-object p2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    new-array p2, p2, [Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p2, p1

    goto :goto_1

    :cond_5
    move-object p2, v0

    :goto_1
    iget-object p1, p0, L䆀/䂻/䂻/䂻;->㺴:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v0, p0, L䆀/䂻/䂻/䂻;->㚬:Landroid/net/Uri;

    iput-object v0, p0, L䆀/䂻/䂻/䂻;->㺴:Landroid/webkit/ValueCallback;

    :cond_6
    return-void
.end method

.method public final 㚬()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, L䆀/䂻/䂻/䂻;->䂻:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "FQQMEU8LEQY="

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, L䆀/䂻/䂻/䂻;->㺴(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, L䆀/䂻/䂻/䂻;->㚬:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "AA8FEw4IBU8MBAUIAE8AAhUIDg9PKCwgJiQ+IiAxNTQzJA=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DhQVERQV"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, L䆀/䂻/䂻/䂻;->㚬:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public final 㺴(Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, L䆀/䂻/䂻/䂻;->䂻:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->ḓ(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public 䂻(Landroid/webkit/WebChromeClient$FileChooserParams;)Landroid/content/Intent;
    .locals 3

    const-string v0, "S05L"

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "AA8FEw4IBU8IDxUEDxVPAAIVCA4PTzEoIio="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "AA8FEw4IBU8IDxUEDxVPBBkVEwBPIC0tLjY+LDQtNSgxLSQ="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public 䆀(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, L䆀/䂻/䂻/䂻;->உ:[Ljava/lang/String;

    invoke-virtual {p0, p1}, L䆀/䂻/䂻/䂻;->உ([Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v1, "AA8FEw4IBU8IDxUEDxVPAAIVCA4PTyIpLi4yJDM="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "AA8FEw4IBU8IDxUEDxVPBBkVEwBPKC8oNSggLT4oLzUkLzUy"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p0}, L䆀/䂻/䂻/䂻;->㚬()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "AA8FEw4IBU8IDxUEDxVPBBkVEwBPKC81JC81"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, L䆀/䂻/䂻/䂻;->䂻(Landroid/webkit/WebChromeClient$FileChooserParams;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "AA8FEw4IBU8IDxUEDxVPBBkVEwBPNSg1LSQ="

    invoke-static {p3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "AgkODhIEEw=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, L䆀/䂻/䂻/䂻;->䂻:Landroid/app/Activity;

    const/16 v1, 0x270f

    invoke-virtual {p3, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-object p2, p0, L䆀/䂻/䂻/䂻;->㺴:Landroid/webkit/ValueCallback;

    goto :goto_0

    :cond_0
    iget-object p1, p0, L䆀/䂻/䂻/䂻;->䂻:Landroid/app/Activity;

    iget-object p3, p0, L䆀/䂻/䂻/䂻;->உ:[Ljava/lang/String;

    invoke-static {p1, p3, v0}, L㚬/ℓ/㺴/உ;->ἥ(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :goto_0
    return v0
.end method
