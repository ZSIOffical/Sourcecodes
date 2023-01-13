import discord
import random
import os
import time
bot = discord.Bot(debug_guilds=[874706777860624405])
Accounts  = ""
with open("alts.txt", "r") as accounts:
     Accounts = accounts.readlines()
@bot.slash_command(name = "roblox", description = "generates a roblox accounts for you")
async def roblox(ctx):
        role = discord.utils.get(ctx.guild.roles,id=1001643701736575066)
        if role in ctx.author.roles:
            embedVar = discord.Embed(title="Muz Gen", description="🚀"+ random.choice(Accounts),       
    	        color=0x336EFF)
            embedVar2 = discord.Embed(title="Muz Gen", description="🚀 Provided by Muz Gen",       
    	        color=0x336EFF)
            await ctx.author.send(embed=embedVar)
            await ctx.respond(embed=embedVar2)
            print(f"{ctx.author} generated an account")
@bot.slash_command(name = "generate", description = "generates a roblox accounts for you")
async def generate(ctx, amount: discord.Option(int)):
        role = discord.utils.get(ctx.guild.roles,id=1001643701736575066)
        if role in ctx.author.roles:
            for i in range(amount):
                        if amount > 15:
                            return
                        if amount > 5:
                            time.sleep(1)
                            embedVar = discord.Embed(title="Muz Gen", description="🚀"+ random.choice(Accounts),       
    	        color=0x336EFF)
                            embedVar2 = discord.Embed(title="Muz Gen", description="🚀 Provided by Muz Gen",       
    	        color=0x336EFF)
                            await ctx.author.send(embed=embedVar)
                            print(f"{ctx.author} generated an account")
                        else:
                            time.sleep(0.5)
                            embedVar = discord.Embed(title="Muz Gen", description="🚀"+ random.choice(Accounts),       
    	        color=0x336EFF)
                            embedVar2 = discord.Embed(title="Muz Gen", description="🚀 Provided by Muz Gen",       
    	        color=0x336EFF)
                            await ctx.author.send(embed=embedVar)
                            print(f"{ctx.author} generated an account")
@bot.slash_command(name = "stock", description = "shows the stock of the alts")
async def stock(ctx):
    services = ["alts"]
    stocklist = []
    for service in services:
        if os.path.exists(f"{service.lower()}.txt"):
            stocklist.append(f"{len(open(f'{service}.txt', 'r').readlines())}")
    embedVar = discord.Embed(title="🚀 Muz Gen  - PREMIUM ", description="n".join(stocklist)+" roblox accounts",       
    color=0x336EFF)
    await ctx.respond(embed=embedVar)
@bot.slash_command(name = "ping", description = "bot ping")
async def ping(ctx):
    a=ctx.guild.member_count
    embedVar = discord.Embed(title="Muz Gen", description=f'🚀 {round(bot.latency*1000)} ms',    
    color=0x336EFF)
    await ctx.respond(embed=embedVar)
@bot.slash_command(name = "membercount", description = "membercount")
async def membercount(ctx):
    a=ctx.guild.member_count
    embedVar = discord.Embed(title="Muz Gen", description=f"🚀 {a}",       
    color=0x336EFF)
    await ctx.respond(embed=embedVar)
@bot.slash_command(name = "gayrate", description = "your gayrate")
async def membercount(ctx,member: discord.Member):
    role = discord.utils.get(ctx.guild.roles,id=1001643701736575066)
    if role in ctx.author.roles:
        embedVar = discord.Embed(title="Muz Gen", description=f"{member} is {random.randint(0,100)}% gay :rainbow_flag:",       
        color=0x336EFF)
        await ctx.respond(embed=embedVar)
@bot.slash_command(name = "help", description = "helps you")
async def help(ctx):
    embedVar = discord.Embed(title="Muz Gen - PREMIUM", description="Help command",       
    color=0x336EFF)
    embedVar.add_field(name='🚀 roblox', value="generates a roblox account for you", inline=False)
    embedVar.add_field(name='🚀 generate', value="you can generate up to 15 alts with it", inline=False)
    embedVar.add_field(name='📢 stock', value="shows you how many accounts the alt generator has", inline=False)
    embedVar.add_field(name='❓ suggest', value="you can suggest stuff and we will look at it", inline=False)
    embedVar.add_field(name='🌐 ping', value="bot ping", inline=False)
    embedVar.add_field(name='👨 membercount', value="membercount", inline=False)


    await ctx.respond(embed=embedVar)
    bot.get_channel
@bot.slash_command(name = "suggest", description = "suggest something")
async def suggest(ctx, suggestion: discord.Option(str)):
    role = discord.utils.get(ctx.guild.roles,id=1001643701736575066)
    if role in ctx.author.roles:
        channel = bot.get_channel(1003565370071863399)
        embedVar = discord.Embed(title="Muz Gen", description=f"Suggestion by {ctx.author}: {suggestion}",       
        color=0x336EFF)
        await channel.send(embed=embedVar)
bot.run("removed for security reasons")